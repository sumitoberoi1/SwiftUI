//
//  SearchRepositoryResponse.swift
//  SwiftUI-Flux
//
//  Created by Sumit Oberoi on 6/5/19.
//  Copyright © 2019 Sumit Oberoi. All rights reserved.
//

import Foundation

struct SearchRepositoryResponse: Decodable {
    var items: [Repository]
}
