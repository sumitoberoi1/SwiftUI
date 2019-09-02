//
//  User.swift
//  SwiftUI-Flux
//
//  Created by Sumit Oberoi on 6/5/19.
//  Copyright © 2019 Sumit Oberoi. All rights reserved.
//

import Foundation
import SwiftUI

struct User: Decodable, Hashable, Identifiable {
    var id: Int64
    var login: String
    var avatarUrl: URL
}
