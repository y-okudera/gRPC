//
//  GreeterProvider.swift
//  GRPCServer
//
//  Created by Yuki Okudera on 2019/11/03.
//  Copyright © 2019 Yuki Okudera. All rights reserved.
//

import Foundation

final class GreeterProvider: Greeter_GreeterProvider {
    
    /// requestで取得したnameにworldを付けて返却する
    func sayHello(request: Greeter_HelloRequest, session: Greeter_GreeterSayHelloSession) throws -> Greeter_HelloReply {
        var g = Greeter_HelloReply()
        g.message = request.name + " world"
        return g
    }
}
