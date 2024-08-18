//
//  TCPConnectionManagaer.swift
//  TCPCommunicationPrototype
//
//  Created by John Eigenbrode on 8/5/24.
//

import Foundation
import Network

class TCPConnectionManager: ObservableObject {
    private var connection: NWConnection?
    private let queue = DispatchQueue(label: "TCP Connection Queue")
    
    @Published var receivedData: String = ""
    
    func connect(host: String, port: UInt16) {
        let host = NWEndpoint.Host(host)
        let port = NWEndpoint.Port(integerLiteral: port)
        
        connection = NWConnection(host: host, port: port, using: .udp)
        connection?.stateUpdateHandler = stateDidChange(to:)
        startReceiving()
        connection?.start(queue: queue)
    }
    
    func send(data: Data) {
        connection?.send(content: data, completion: .contentProcessed { error in
            if let error = error {
                print("Send error: \(error)")
            } else {
                print("Data sent")
            }
        })
    }
    
    private func stateDidChange(to state: NWConnection.State) {
        switch state {
        case .ready:
            print("Connected")
        case .failed(let error):
            print("Connection failed: \(error)")
            connection?.cancel()
        case .waiting(let error):
            print("Connection waiting: \(error)")
        case .cancelled:
            print("Connection cancelled")
        default:
            break
        }
    }
    
    private func startReceiving() {
        connection?.receive(minimumIncompleteLength: 1, maximumLength: 65536, completion: { [weak self] (data, context, isComplete, error) in
            if let data = data, !data.isEmpty {
                if let message = String(data: data, encoding: .utf8) {
                    DispatchQueue.main.async {
                        self?.receivedData.append(message)
                    }
                }
            }
            if isComplete {
                self?.connection?.cancel()
            } else if let error = error {
                print("Receive error: \(error)")
            } else {
                self?.startReceiving()
            }
        })
    }
    
    func disconnect() {
        connection?.cancel()
        connection = nil
    }
}

