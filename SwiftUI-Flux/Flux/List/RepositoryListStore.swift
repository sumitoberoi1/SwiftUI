//
//  RepositoryListStore.swift
//  SwiftUI-Flux
//
//  Created by Sumit Oberoi on 6/15/19.
//  Copyright © 2019 Sumit Oberoi. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

final class RepositoryListStore: ObservableObject {
    static let shared = RepositoryListStore()
    
    @Published private(set) var repositories: [Repository] = []
    @Published var isErrorShown = false
    @Published var errorMessage = ""
    @Published private(set) var shouldShowIcon = false
    
    init(dispatcher: RepositoryListDispatcher = .shared) {
        dispatcher.register { [weak self] (action) in
            guard let strongSelf = self else { return }
            
            switch action {
            case .updateRepositories(let repositories): strongSelf.repositories = repositories
            case .updateErrorMessage(let message): strongSelf.errorMessage = message
            case .showError: strongSelf.isErrorShown = true
            case .showIcon: break
            }
        }
    }
}
