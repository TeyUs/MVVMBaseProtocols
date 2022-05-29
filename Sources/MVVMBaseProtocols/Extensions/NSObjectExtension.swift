//
//  NSObjectExtension.swift
//  Sample_CoreData_MVVM
//
//  Created by teyhan.uslu on 10.05.2022.
//

import Foundation

public extension NSObject {
    // MARK: - Static Properties
    @objc class var className: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}
