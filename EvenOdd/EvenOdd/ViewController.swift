//
//  ViewController.swift
//  EvenOdd
//
//  Created by DCS on 14/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//


import UIKit
class ViewController: UIViewController {
    
    private let myButton:UIButton = {
        let button = UIButton()
        button.setTitle("Even / Odd", for: .normal)
        button.addTarget(self, action: #selector(handleEvent), for: .touchUpInside)
        button.backgroundColor = .green
        button.layer.cornerRadius = 8
        return button
    }()
    
    @objc private func handleEvent() {
        print("received..")
        let vc = EvenOddCheckVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg.jpg")!)
        view.addSubview(myButton)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myButton.frame = CGRect(x: 40, y: (view.height / 2) - 30, width: view.width - 80, height: 60)
    }
}
