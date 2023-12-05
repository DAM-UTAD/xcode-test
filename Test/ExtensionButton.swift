//
//  ExtensionButton.swift
//  Test
//
//  Created by Andrei Marin on 5/12/23.
//

import Foundation
import UIKit

extension UIButton {
    func mainButton() {
        self.layer.cornerRadius = self.layer.frame.height / 2
        self.backgroundColor = .red
    }
}
