//
//  BaseViewProtocol.swift
//  Sample_CoreData_MVVM
//
//  Created by teyhan.uslu on 10.05.2022.
//

import Foundation
import UIKit.UIViewController
import UIKit.UITableViewCell

/// View classes or protocols of view classes conforms to should conform to this protocol.
public protocol BaseViewProtocol{
    /// It is used to determine the type of viewModel
    /// (that the classes that will conform to this protocol will interact with).
    associatedtype ViewModelType: BaseViewModelProtocol

    /// view classes interact with own viewModel. Property of "viewModel" is used for this.
    var viewModel: ViewModelType? { get set }

    /// view classes have to keep own "storyboardName" as String type.
    static var storyboardName: String {get}
}

public extension BaseViewProtocol where Self: UIViewController{
    /// It is used to creating only new view.
    /// It can only be called in classes that are conforms UIViewController
    /// Called in BaseViewModelProtocol.startPage()
    /// This function does:
    ///  * Initializes the storyboard via "storyboardName".
    ///  * Initializes the view as viewController.
    ///  * returns self as viewController
    static func instantiate() -> Self{
        let storyboard = UIStoryboard(name: Self.storyboardName, bundle: nil)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: Self.className)  as? Self else {
            fatalError("Storyboard cannot instantiated")
        }
        return viewController
    }

    /// Prepared to be called only when the identifier name is different from the class name
    /// The rest is exactly the same.
    static func instantiate(withIdentifier identifier: String) -> Self{
        let storyboard = UIStoryboard(name: Self.storyboardName, bundle: nil)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: identifier) as? Self else {
            fatalError("Storyboard cannot instantiated")
        }
        return viewController
    }
}

public protocol BaseViewCellProtocol: BaseViewProtocol where Self: UITableViewCell{
    /// It is used to request attributes for new cell.
    /// It can only be called in classes that are conforms UITableViewCell.
    func requestAttributes()
}
