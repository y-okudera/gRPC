//
//  ViewController.swift
//  GRPCClient
//
//  Created by Yuki Okudera on 2019/11/03.
//  Copyright © 2019 Yuki Okudera. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction private func tappedRequestButton(_ sender: UIButton) {
        self.gRPCRequest()
    }
}

extension ViewController {
    
    private func gRPCRequest() {
        #warning("localhost接続でも、Simulatorでは動作確認可能")
        let client = Greeter_GreeterServiceClient(address: "localhost:8080", secure: false)
        var request = Greeter_HelloRequest()
        request.name = "hello"
        
        do {
            let response = try client.sayHello(request)
            print("gRPC Server response " + response.message)
        } catch {
            print("gRPC Server \(error)")
        }
    }
}
