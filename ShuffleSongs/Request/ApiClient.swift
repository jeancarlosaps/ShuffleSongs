//
//  ApiClient.swift
//  ShuffleSongs
//
//  Created by Jean Carlos on 11/12/19.
//  Copyright © 2019 Jean Carlos. All rights reserved.
//

import Foundation

class ApiClient {
    var url: URL
    var callBack: (Bool) ->()
    var service: ServiceType
    
    required init(url: URL, callBack: @escaping (Bool) -> (), service: ServiceType) {
        self.url = url
        self.callBack = callBack
        self.service = service
    }
    
    func run() {
        service.request()
    }
}
