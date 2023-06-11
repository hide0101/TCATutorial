//
//  TCATutorialApp.swift
//  TCATutorial
//
//  Created by hide0101 on 2023/06/07.
//

import ComposableArchitecture
import SwiftUI

@main
struct TCATutorialApp: App {
    static let store = Store(
        initialState: CounterFeature.State(),
        reducer: {
            CounterFeature()
                ._printChanges()
        }
    )
    
    var body: some Scene {
        WindowGroup {
            CounterView(store: TCATutorialApp.store)
        }
    }
}
