//
//  ServiceMock.swift
//  ShuffleSongsTests
//
//  Created by Jean Carlos on 11/13/19.
//  Copyright © 2019 Jean Carlos. All rights reserved.
//

import Foundation
import XCTest

@testable import ShuffleSongs

class ServiceMock: ServiceType {
    var didRequest: Bool = false
    
    func request() {
        didRequest = true
    }
}
