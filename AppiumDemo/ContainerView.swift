//
//  ContainerView.swift
//  AppiumDemo
//
//  Created by BS on 12/26/18.
//  Copyright © 2018 BS. All rights reserved.
//

import UIKit

class ContainerView: UIView {

    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Container View"
        label.textAlignment = .center
        label.backgroundColor = .clear
        label.sizeToFit()
        label.automationIdentifier = "bs.container.title"
        label.isAccessibilityElement = true
        return label
    }()

    let button: UIButton = {
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 32))
        btn.setTitle("OK", for: .normal)
        btn.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        btn.setTitleShadowColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .highlighted)
        btn.layer.cornerRadius = 8
        btn.clipsToBounds = true
        btn.automationIdentifier = "bs.container.button"
        btn.isAccessibilityElement = true
        return btn
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutIfNeeded() {
        super.layoutIfNeeded()
        autoresizingMask = [.flexibleLeftMargin, .flexibleRightMargin, .flexibleTopMargin, .flexibleBottomMargin, .flexibleWidth, .flexibleHeight]

        titleLabel.center = CGPoint(x: center.x, y: bounds.height / 3)
        setAutoresizingMask(for: titleLabel)

        button.center = CGPoint(x: center.x, y: bounds.height * 2 / 3)
        setAutoresizingMask(for: button)
    }

    private func setupView() {
        isAccessibilityElement = false
        backgroundColor = #colorLiteral(red: 0.752568841, green: 0.752568841, blue: 0.752568841, alpha: 1)
        addSubview(titleLabel)
        addSubview(button)
    }

    private func setAutoresizingMask(for view: UIView) {
        view.autoresizingMask = [.flexibleLeftMargin, .flexibleRightMargin, .flexibleWidth]
    }
}
