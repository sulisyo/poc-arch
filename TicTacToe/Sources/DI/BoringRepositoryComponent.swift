//
//  BoringRepositoryComponent.swift
//  TicTacToe
//
//  Created by Wahyu Sulistyo on 11/05/22.
//

import Foundation
import NeedleFoundation

protocol BoringRepositoryDependency: Dependency {
    var boredApi: BoredApi { get }
}

class BoringRepositoryComponent: Component<BoringRepositoryDependency>, BoringRepositoryBuilder{

    var boringRepository: BoringRepository {
        return BoringRepository(boredApi: dependency.boredApi)
    }
    
}

// Use a builder protocol to allow mocking for unit tests. At the same time,
// this allows LoggedOutViewController to be initialized lazily.
protocol BoringRepositoryBuilder {
    var boringRepository: BoringRepository { get }
}
