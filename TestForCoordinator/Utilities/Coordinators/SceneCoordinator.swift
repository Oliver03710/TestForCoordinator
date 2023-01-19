//
//  SceneCoordinator.swift
//  TestForCoordinator
//
//  Created by Junhee Yoon on 2022/12/28.
//

import UIKit

final class SceneCoordinator: Coordinator {
    
    // MARK: - Properties
    var childCoordinators: [Coordinator]
    var presenter: UINavigationController
    let window: UIWindow
    
    // MARK: - Init
    init(window: UIWindow) {
        self.window = window
        self.presenter = UINavigationController()
        self.childCoordinators = []
    }
    
    func start() {
        window.rootViewController = presenter
        
        let coordinator = MainCoordinator(presenter: presenter)
        childCoordinators.append(coordinator)
        coordinator.start()
        
        window.makeKeyAndVisible()
    }
}

