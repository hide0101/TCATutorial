//
//  CounterFeatureTests.swift
//  TCATutorialTests
//
//  Created by hide0101 on 2023/06/11.
//

import ComposableArchitecture
import XCTest
@testable import TCATutorial


@MainActor
final class CounterFeatureTests: XCTestCase {
    func testTimer() async {
        let clock = TestClock()
        
        let store = TestStore(initialState: CounterFeature.State()) {
            CounterFeature()
        } withDependencies: {
            $0.continuousClock = clock
        }
        
        await store.send(.toggleTimerButtonTapped) {
            $0.isTimerRunnning = true
        }
        await clock.advance(by: .seconds(1))
        await store.receive(.timerTick) {
            $0.count = 1
        }
        await store.send(.toggleTimerButtonTapped) {
            $0.isTimerRunnning = false
        }
    }
}
