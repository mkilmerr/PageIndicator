//
//  PageIndicatorViewFactory.swift
//
//
//   Created by Kilmer on 15/07/22.
//

import UIKit

struct PageIndicatorViewFactory {

    static func current() -> UIView {
        let container: UIView = {
            let view = UIView()
            view.layer.cornerRadius = 5
            view.translatesAutoresizingMaskIntoConstraints = false
            return view
        }()

        container.widthAnchor.constraint(equalToConstant: 20).isActive = true
        container.heightAnchor.constraint(equalToConstant: 10).isActive = true

        return container
    }

    static func completed() -> UIView {
        let container: UIView = {
            let view = UIView()
            view.layer.cornerRadius = 5
            view.translatesAutoresizingMaskIntoConstraints = false
            return view
        }()

        container.widthAnchor.constraint(equalToConstant: 10).isActive = true
        container.heightAnchor.constraint(equalToConstant: 10).isActive = true

        return container
    }

    static func uncompleted() -> UIView {
        let container: UIView = {
            let view = UIView()
            view.layer.borderWidth = 1.0
            view.layer.cornerRadius = 5
            view.translatesAutoresizingMaskIntoConstraints = false
            return view
        }()

        container.widthAnchor.constraint(equalToConstant: 10).isActive = true
        container.heightAnchor.constraint(equalToConstant: 10).isActive = true

        return container
    }
}
