//
//  MockExperimentService.swift
//  SwiftUI-FluxTests
//
//  Created by Sumit Oberoi on 6/9/19.
//  Copyright © 2019 Sumit Oberoi. All rights reserved.
//

import Foundation
@testable import SwiftUI_Flux

final class MockExperimentService: ExperimentServiceType {
    
    var stubs: [ExperimentKey: Bool] = [:]
    func experiment(for key: ExperimentKey, value: Bool) {
        stubs[key] = value
    }
    
    func experiment(for key: ExperimentKey) -> Bool {
        return stubs[key] ?? false
    }
}