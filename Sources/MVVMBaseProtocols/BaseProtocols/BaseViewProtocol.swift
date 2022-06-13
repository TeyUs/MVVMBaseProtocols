//
//  BaseViewProtocol.swift
//  Sample_CoreData_MVVM
//
//  Created by teyhan.uslu on 10.05.2022.
//

import Foundation
import UIKit.UIViewController
import UIKit.UITableViewCell

public protocol BaseViewProtocol{
    associatedtype ViewModelType: BaseViewModelProtocol
    var viewModel: ViewModelType? { get set }
    static var storyboardName: String {get}
}

public extension BaseViewProtocol where Self: UIViewController{
    static func instantiate() -> Self{
        let storyboard = UIStoryboard(name: Self.storyboardName, bundle: nil)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: Self.className)  as? Self else {
            fatalError("Storyboard cannot instantiated")
        }
        return viewController
    }

    static func instantiate(withIdentifier identifier: String) -> Self{
        let storyboard = UIStoryboard(name: Self.storyboardName, bundle: nil)

        guard let viewController = storyboard.instantiateViewController(withIdentifier: identifier) as? Self else {
            fatalError("Storyboard cannot instantiated")
        }

        return viewController
    }
}

public protocol BaseViewCellProtocol: BaseViewProtocol where Self: UITableViewCell{
    func requestAttributes()
}
