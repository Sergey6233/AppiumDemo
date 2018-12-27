//
//  ViewController.swift
//  AppiumDemo
//
//  Created by BS on 12/21/18.
//  Copyright © 2018 BS. All rights reserved.
//

import UIKit

class SimpleController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var testView: UIView!
    private var container: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.automationIdentifier = "bs.title.label"
        container = ContainerView(frame: CGRect.zero)
        container.frame = testView.bounds
        testView.addSubview(container)
        container.layoutIfNeeded()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        container.layoutIfNeeded()
    }

    @IBAction func onButtonTapped(_ sender: UIButton) {
        print("[SimpleController] titleLabel ID = \(titleLabel.automationIdentifier ?? "nil")")
    }
}

