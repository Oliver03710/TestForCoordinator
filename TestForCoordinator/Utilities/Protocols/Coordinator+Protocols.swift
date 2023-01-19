//
//  Coordinator+Protocols.swift
//  TestForCoordinator
//
//  Created by Junhee Yoon on 2022/12/28.
//

import UIKit

protocol Coordinator: AnyObject {
    
    // MARK: - Properties
    var childCoordinators: [Coordinator] { get set }
    var presenter: UINavigationController { get set }
    
    // MARK: - Functions
    func start()
}
