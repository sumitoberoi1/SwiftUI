//
//  Repository.swift
//  SwiftUI-Flux
//
//  Created by Sumit Oberoi on 6/5/19.
//  Copyright © 2019 Sumit Oberoi. All rights reserved.
//

import Foundation
import SwiftUI

struct Repository: Decodable, Hashable, Identifiable {
    var id: Int64
    var fullName: String
    var description: String?
    var stargazersCount: Int = 0
    var language: String?
    var owner: User
}
