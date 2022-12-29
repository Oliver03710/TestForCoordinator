//
//  FirstViewController.swift
//  TestForCoordinator
//
//  Created by Junhee Yoon on 2022/12/29.
//

import UIKit

final class FirstViewController: UIViewController {

    // MARK: - Properties
    weak var coordinator: MainCoordinator?
    var viewModel: MainViewModel?
    
    // MARK: - Init
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    deinit {
        print("\(type(of: self)) Deinit")
    }
}
