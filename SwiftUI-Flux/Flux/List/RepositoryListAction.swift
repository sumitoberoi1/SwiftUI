//
//  RepositoryListAction.swift
//  SwiftUI-Flux
//
//  Created by Sumit Oberoi on 6/15/19.
//  Copyright © 2019 Sumit Oberoi. All rights reserved.
//

import Foundation

enum RepositoryListAction {
    case updateRepositories([Repository])
    case updateErrorMessage(String)
    case showError
    case showIcon
}
