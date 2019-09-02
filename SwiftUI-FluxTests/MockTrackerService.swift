//
//  MockTrackerService.swift
//  SwiftUI-FluxTests
//
//  Created by Sumit Oberoi on 6/8/19.
//  Copyright © 2019 Sumit Oberoi. All rights reserved.
//

import Foundation
@testable import SwiftUI_Flux

final class MockTrackerService: TrackerType {
    
    private(set) var loggedTypes: [TrackEventType] = []
    
    func log(type: TrackEventType) {
        loggedTypes.append(type)
    }
}
