//
//  ViewController.swift
//  TestForCoordinator
//
//  Created by Junhee Yoon on 2022/12/28.
//

import UIKit

final class MainViewController: UIViewController {
    
    // MARK: - Properties
    private let mainView = MainView()
    
    weak var coordinator: MainCoordinator?
    var viewModel: MainViewModel?
    
    // MARK: - Init
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addActions()
    }
    
    deinit {
        print("\(type(of: self)) Deinit")
    }
    
    // MARK: - Functions
    private func addActions() {
        mainView.nextPushButton.addTarget(self, action: #selector(nextPushButtonTapped), for: .touchUpInside)
        mainView.nextPresentButton.addTarget(self, action: #selector(nextPresentButtonTapped), for: .touchUpInside)
    }
    
    // MARK: - Selectors
    @objc func nextPushButtonTapped() {
        print("Push To Next")
        coordinator?.pushVC()
        
//        let coordinator = FirstCoordinator(presenter: UINavigationController())
//        coordinator.start()
    }
    
    @objc func nextPresentButtonTapped() {
        print("Present To Next")
        coordinator?.present()
    }
}
