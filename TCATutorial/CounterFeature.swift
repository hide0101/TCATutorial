//
//  CounterFeature.swift
//  TCATutorial
//
//  Created by hide0101 on 2023/06/08.
//

import ComposableArchitecture

struct CounterFeature: ReducerProtocol {
    struct State {
        var count = 0
    }
    
    enum Action {
        case decrementButtonTapped
        case incrementButtonTapped
    }
    
    func reduce(into state: inout State, action: Action) -> EffectTask<Action> {
        switch action {
        case .decrementButtonTapped:
            state.count -= 1
            return .none
        case.incrementButtonTapped:
            state.count += 1
            return .none
        }
    }
}
