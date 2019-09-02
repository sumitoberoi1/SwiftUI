//
//  AnySubscription.swift
//  SwiftUI-Flux
//
//  Created by Sumit Oberoi on 6/9/19.
//  Copyright © 2019 Sumit Oberoi. All rights reserved.
//

import Foundation
import Combine

final class AnySubscription: Subscription {
    
    private let cancellable: AnyCancellable
    
    init(_ cancel: @escaping () -> Void) {
        self.cancellable = AnyCancellable(cancel)
    }
    
    func request(_ demand: Subscribers.Demand) {}
    
    func cancel() {
        cancellable.cancel()
    }
}
