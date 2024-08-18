//
//  ContentView.swift
//  TCPCommunicationPrototype
//
//  Created by John Eigenbrode on 8/5/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var tcpConnectionManager = TCPConnectionManager()
    @State private var isSpinning: Bool = false
    @State private var messageToSend = ""
    @State private var host = "192.168.254.91"
    @State private var port: UInt16 = 9200
    @State private var vfoAFrequency = "00000000"
    var macro1Title: String = "POWER"
    var macro1Command: String = "PC;"
    var body: some View {
        
        
       
        VStack {
            Spacer()
            Text(vfoAFrequency)
                .font(.largeTitle)
                .labelStyle(.titleOnly)
            HStack {
                HStack {
                    VStack{
                        Button {
                            let data = Data(macro1Command.utf8)
                            tcpConnectionManager.send(data: data)
                            tcpConnectionManager.receivedData = ""
                        } label: {
                            Text(macro1Title)
                        }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        
                        Button {
                            // ToDo: power change command
                        } label: {
                            Text("PREAMP")
                        }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        
                        Button {
                            // ToDo: power change command
                        } label: {
                            Text("VOX        ")
                        }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        
                        Button {
                            // ToDo: power change command
                        } label: {
                            Text("AUTO    ")
                        }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        
                        Button {
                            // ToDo: power change command
                        } label: {
                            Text("APF        ")
                        }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        
                        Button {
                            // ToDo: power change command
                        } label: {
                            Text("MODE    ")
                        }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        
                        Button {
                            // ToDo: power change command
                        } label: {
                            Text("ANT        ")
                        }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        
                        Button {
                            // ToDo: power change command
                        } label: {
                            Text("RXANT   ")
                        }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        
                    }
                    
                    VStack{
                        Button {
                            // ToDo: power change command
                        } label: {
                            Text("M1        ")
                        }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        
                        Button {
                            // ToDo: power change command
                        } label: {
                            Text("M2        ")
                        }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        
                        Button {
                            // ToDo: power change command
                        } label: {
                            Text("M3         ")
                        }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        
                        Button {
                            // ToDo: power change command
                        } label: {
                            Text("M4         ")
                        }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        Button {
                            // ToDo: power change command
                        } label: {
                            Text("NB         ")
                        }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        
                        Button {
                            // ToDo: power change command
                        } label: {
                            Text("NR         ")
                        }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        
                        Button {
                            // ToDo: power change command
                        } label: {
                            Text("NTCH A ")
                        }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        
                        Button {
                            // ToDo: power change command
                        } label: {
                            Text("NTCH M ")
                        }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        
                    }
                }
                
                
                Image("TKnob")
                    .resizable()
                    .frame(width: 300.0, height: 300.0)
                    .clipShape(Circle())
                    .overlay {
                        HStack{
                        Button {
                            let data = Data("DN;".utf8)
                            tcpConnectionManager.send(data: data)
                            tcpConnectionManager.receivedData = ""
                        } label: {
                            Text("DN")
                                .foregroundStyle(.white)
                        }
                            Spacer()
                            Button {
                                let data = Data("UP;".utf8)
                                tcpConnectionManager.send(data: data)
                                tcpConnectionManager.receivedData = ""
                            } label: {
                                Text("UP")
                                    .foregroundStyle(.white)
                            }
                        }
                        .padding(40)
                    }
                   
                HStack {
                    VStack{
                         
                        Button {
                            // ToDo: power change command
                        } label: {
                            Text("PILEUP  ")
                        }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        
                        Button {
                            // ToDo: power change command
                        } label: {
                            Text("NORM   ")
                        }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        
                        Button {
                            // ToDo: power change command
                        } label: {
                            Text("20M NE ")
                        }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        
                        Button {
                            // ToDo: power change command
                        } label: {
                            Text("40 NET  ")
                        }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        
                        Button {
                            // ToDo: power change command
                        } label: {
                            Text("KPA  TN ")
                        }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        
                        Button {
                            // ToDo: power change command
                        } label: {
                            Text("KPA ANT")
                        }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        
                        Button {
                            // ToDo: power change command
                        } label: {
                            Text("RIT          ")
                        }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        
                        Button {
                            // ToDo: power change command
                        } label: {
                            Text("XIT          ")
                        }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        
                    }
                    
                    VStack{
                        Button {
                            // ToDo: power change command
                        } label: {
                            Text("LOCK A")
                        }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        
                        Button {
                            // ToDo: power change command
                        } label: {
                            Text("LOCK B")
                        }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        
                        Button {
                            // ToDo: power change command
                        } label: {
                            Text("AF REC  ")
                        }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        
                        Button {
                            // ToDo: power change command
                        } label: {
                            Text("AF PLY   ")
                        }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        Button {
                            // ToDo: power change command
                        } label: {
                            Text("SP & HP")
                        }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        
                        Button {
                            // ToDo: power change command
                        } label: {
                            Text("QSK       ")
                        }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        
                        Button {
                            // ToDo: power change command
                        } label: {
                            Text("ATTEN   ")
                        }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        
                        Button {
                            // ToDo: power change command
                        } label: {
                            Text("FILTER    ")
                        }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        
                    }
                }
                
            }
                
            Spacer()
                TextField("Host", text: $host)
                   // .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Port", value: $port, formatter: NumberFormatter())
                   // .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Message", text: $messageToSend)
                   // .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                HStack {
                    Button("Connect") {
                        tcpConnectionManager.connect(host: host, port: port)
                    }
                   // .padding()
                    
                    Button("Send") {
                        if let data = messageToSend.data(using: .utf8) {
                            tcpConnectionManager.send(data: data)
                        }
                        tcpConnectionManager.receivedData = ""
                    }
                    .padding()
                    
                    Button("Disconnect") {
                        tcpConnectionManager.disconnect()
                    }
                    .padding()
                }
                
                Text("Received Data:")
                    //.padding()
                
                Text(tcpConnectionManager.receivedData)
                    .padding()
                    .border(Color.black)
                
            }
            .padding()
            
            
            
            
        }
    
}


#Preview {
    ContentView()
}
