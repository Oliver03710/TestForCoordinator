//
//  MainView.swift
//  TestForCoordinator
//
//  Created by Junhee Yoon on 2022/12/29.
//

import UIKit

final class MainView: UIView {

    // MARK: - Properties
    let nextPushButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .black
        btn.setTitle("Push", for: .normal)
        btn.titleLabel?.textColor = .white
        return btn
    }()
    
    let nextPresentButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .darkGray
        btn.setTitle("Present", for: .normal)
        btn.titleLabel?.textColor = .white
        return btn
    }()
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        addObjects()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setting UI
    private func addObjects() {
        addSubview(nextPushButton)
        addSubview(nextPresentButton)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            nextPushButton.widthAnchor.constraint(equalToConstant: 120),
            nextPushButton.heightAnchor.constraint(equalToConstant: 40),
            nextPushButton.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor),
            nextPushButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            nextPresentButton.widthAnchor.constraint(equalToConstant: 120),
            nextPresentButton.heightAnchor.constraint(equalToConstant: 40),
            nextPresentButton.topAnchor.constraint(equalTo: nextPushButton.bottomAnchor, constant: 40),
            nextPresentButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor)
        ])
    }
    
}
