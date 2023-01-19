//
//  MainCoordinator.swift
//  TestForCoordinator
//
//  Created by Junhee Yoon on 2022/12/28.
//

import UIKit

final class MainCoordinator: Coordinator {
    
    // MARK: - Properties
    var childCoordinators = [Coordinator]()
    
    var presenter: UINavigationController
    var viewModel: MainViewModel?
    
    // MARK: - Init
    init(presenter: UINavigationController, viewModel: MainViewModel? = MainViewModel()) {
        self.presenter = presenter
        self.viewModel = viewModel
    }
    
    // MARK: - Functions
    func start() {
        let mainVC = MainViewController()
        mainVC.coordinator = self
        mainVC.view.backgroundColor = .systemBrown
        mainVC.viewModel = viewModel
        presenter.pushViewController(mainVC, animated: true)
    }
    
    func pushVC() {
        let child = FirstCoordinator(presenter: presenter)
        child.parentCoordinator = self
        childCoordinators.append(child)
        child.start()
    }
    
    func present() {
        let presentVC = FirstViewController()
        presentVC.coordinator = self
        presenter.present(presentVC, animated: true)
    }
    
    func childDidFinish(_ child: Coordinator?) {
        for (index, coordinator) in childCoordinators.enumerated() {
            if coordinator === child {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
}
