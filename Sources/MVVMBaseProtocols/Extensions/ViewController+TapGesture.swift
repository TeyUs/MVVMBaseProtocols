//
//  ViewController+TapGesture.swift
//  PriorityOfTasks
//
//  Created by teyhan.uslu on 9.12.2021.
//

import UIKit

public extension UIViewController {
    /// It is used to close the keyboard when touching on empty areas.
    /// This method must be called before the keyboard is requested to close.
    /// It is recommended to call it in viewDidLoad function.
    /// Referance: https://stackoverflow.com/a/27079103/14814820
    public func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
