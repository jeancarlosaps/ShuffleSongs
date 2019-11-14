//
//  ApiClientTest.swift
//  ShuffleSongsTests
//
//  Created by Jean Carlos on 11/13/19.
//  Copyright © 2019 Jean Carlos. All rights reserved.
//

import Foundation
import XCTest

import ShuffleSongs

@testable import ShuffleSongs

class ApiClientTest: XCTestCase {
    func testApiRequest() {
        let serviceMock = ServiceMock()
        let apiClient = ApiClient(url: URL(string: Strings.urlString)!, callBack: {success in}, service: serviceMock)
        
        apiClient.run()
    }
}
