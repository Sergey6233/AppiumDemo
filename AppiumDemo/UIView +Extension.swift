//
//  UIView +Extension.swift
//  AppiumDemo
//
//  Created by BS on 12/21/18.
//  Copyright © 2018 BS. All rights reserved.
//

import UIKit

extension UIView {
    var automationIdentifier: String? {
        get {
            return accessibilityIdentifier
        }
        set {
            accessibilityIdentifier = newValue
            markView()
            setupGestureRecognizer()
        }
    }

    var className: String {
        return String(describing: type(of: self))
    }

    private func markView() {
        layer.borderColor = UIColor.red.cgColor
        layer.borderWidth = 1
    }

    private func setupGestureRecognizer() {
        isUserInteractionEnabled = true
        let longTap = UILongPressGestureRecognizer(target: self, action: #selector(handleGestureRecognizer(sender:)))
        addGestureRecognizer(longTap)
        print("[GestureRecognizer][Setup] Add gesture for class: \(className)")
    }

    @objc private func handleGestureRecognizer(sender: UILongPressGestureRecognizer) {
        if sender.state == .began {
            print("[GestureRecognizer][LongPress] for class: \(className)")
        }

    }
}














// MARK: - Notes

/*
 switch sender.state {
 case .began:
 print(">> [LongPress] began")
 case .cancelled:
 print(">> [LongPress] cancelled")
 case .changed:
 print(">> [LongPress] changed")        // Перемещение при удержании
 case .ended:
 print(">> [LongPress] ended")          // Отпустили палец или за границы экрана
 case .failed:
 print(">> [LongPress] failed")
 case .possible:
 print(">> [LongPress] possible")
 }
 */
