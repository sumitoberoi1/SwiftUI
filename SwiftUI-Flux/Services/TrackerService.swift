//
//  TrackerService.swift
//  SwiftUI-Flux
//
//  Created by Sumit Oberoi on 6/8/19.
//  Copyright © 2019 Sumit Oberoi. All rights reserved.
//

import Foundation

enum TrackEventType {
    case listView
}

protocol TrackerType {
    func log(type: TrackEventType)
}

final class TrackerService: TrackerType {
    
    func log(type: TrackEventType) {
        // do something
    }
}
