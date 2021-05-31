//
//  UIApplication+Extension.swift
//  My Secure App
//
//  Created by Stewart Lynch on 2021-01-21.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
