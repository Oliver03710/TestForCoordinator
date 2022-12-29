//
//  FirstCoordinator.swift
//  TestForCoordinator
//
//  Created by Junhee Yoon on 2022/12/29.
//

import UIKit

final class FirstCoordinator: Coordinator {
    
    // MARK: - Properties
    var childCoordinators = [Coordinator]()
    weak var parentCoordinator: MainCoordinator?
    
    var presenter: UINavigationController
    var viewModel: MainViewModel?
    
    // MARK: - Init
    init(presenter: UINavigationController, viewModel: MainViewModel? = MainViewModel()) {
        self.presenter = presenter
        self.viewModel = viewModel
    }
    
    func start() {
        let firstVC = FirstViewController()
        firstVC.view.backgroundColor = .red
        firstVC.viewModel = viewModel
        presenter.pushViewController(firstVC, animated: true)
    }
    
    func dismiss() {
        presenter.popViewController(animated: true)
        parentCoordinator?.childDidFinish(self)
    }
}
