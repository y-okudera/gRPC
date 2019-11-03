//
//  AppDelegate.swift
//  GRPCServer
//
//  Created by Yuki Okudera on 2019/11/03.
//  Copyright © 2019 Yuki Okudera. All rights reserved.
//

import Cocoa
import SwiftGRPC

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        gRPC.initialize()
        print("GRPC version", gRPC.version)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
}
