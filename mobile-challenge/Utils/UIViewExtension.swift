//
//  UIViewExtension.swift
//  conversor-monetario
//
//  Created by Reginaldo Viana on 19/08/21.
//

import UIKit

extension UIView {
    
    func hideKeyboard() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        self.addGestureRecognizer(tap)
    }
    
    @objc private func dismissKeyboard() {
        self.endEditing(true)
    }
}
