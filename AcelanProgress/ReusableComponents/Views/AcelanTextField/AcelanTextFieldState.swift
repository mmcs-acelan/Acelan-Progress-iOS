//
//  AcelanTextFieldState.swift
//  AcelanProgress
//
//  Created by Mikhail Yeremeyev on 22.04.2023.
//

import Foundation
import SwiftUI
import UIKit

@MainActor
final class AcelanTextFieldState: ObservableObject {
    
    @Published
    var focused: Bool = false
    
    func setup(textField: UITextField) {
        textField.addTarget(
            self,
            action: #selector(didBeginEditing),
            for: .editingDidBegin
        )
        
        textField.addTarget(
            self,
            action: #selector(didEndEditing),
            for: .editingDidEnd
        )
    }
    
}

private extension AcelanTextFieldState {
    
    @objc
    func didBeginEditing() {
        focused = true
    }
    
    @objc
    func didEndEditing() {
        focused = false
    }
    
}