//
//  ButtonMacro.swift
//  TCPCommunicationPrototype
//
//  Created by John Eigenbrode on 8/8/24.
//

import Foundation
import SwiftData

@Model
final class ButtonMacro {
    var title: String
    var command: String
    
    init(title: String, command: String) {
        self.title = title
        self.command = command 
    }
    
}
