//
//  ViewController.swift
//  GRPCServer
//
//  Created by Yuki Okudera on 2019/11/03.
//  Copyright © 2019 Yuki Okudera. All rights reserved.
//

import Cocoa
import SwiftGRPC

final class ViewController: NSViewController {
    
    var greeterServer: ServiceServer?
    var semaphore: DispatchSemaphore?
    
    @IBAction private func onClickStartServer(_ sender: NSButton) {
        print(#function)
        
        semaphore?.wait()
        semaphore = DispatchSemaphore(value: 0)
        
        let greeterProvider = GreeterProvider()
        greeterServer = ServiceServer(address: "localhost:8080", serviceProviders: [greeterProvider])
        greeterServer?.start()
    }
    
    @IBAction private func onClickStopServer(_ sender: NSButton) {
        print(#function)
        greeterServer?.server.stop()
        semaphore?.signal()
    }
}
