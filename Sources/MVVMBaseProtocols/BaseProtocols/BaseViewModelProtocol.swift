//
//  BaseViewModelProtocol.swift
//  Sample_CoreData_MVVM
//
//  Created by teyhan.uslu on 10.05.2022.
//

import Foundation
import UIKit.UIViewController

public protocol BaseViewModelProtocol{
    associatedtype ViewType: BaseViewProtocol
    associatedtype ModelType: BaseModelProtocol
    var delegate: ViewType? { get set }
    var model: ModelType { get }
}

public extension BaseViewModelProtocol where ViewType: UIViewController{
    mutating func startPage() -> ViewType {
        var viewController = ViewType.instantiate()
        self.delegate = viewController
        guard let self = self as? Self.ViewType.ViewModelType else {
            fatalError("\(ViewType.className) instantiate")
        }
        viewController.viewModel = self
        return viewController
    }
}

public protocol BaseViewModelCellProtocol: BaseViewModelProtocol where ViewType: BaseViewCellProtocol {
    var tableView: UITableView { get }
}

public extension BaseViewModelCellProtocol{
    mutating func startCell() -> ViewType {
        var cell = tableView.dequeueReusableCell(withIdentifier: ViewType.storyboardName) as! ViewType
        delegate = cell
        guard let self = self as? Self.ViewType.ViewModelType else{
            fatalError("Table View Cell viewmodel cannot ")
        }
        cell.viewModel = self
        cell.requestAttributes()
        return cell
    }
}
