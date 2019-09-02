//
//  APIServiceError.swift
//  SwiftUI-Flux
//
//  Created by Sumit Oberoi on 6/6/19.
//  Copyright © 2019 Sumit Oberoi. All rights reserved.
//

import Foundation

enum APIServiceError: Error {
    case responseError
    case parseError(Error)
}
