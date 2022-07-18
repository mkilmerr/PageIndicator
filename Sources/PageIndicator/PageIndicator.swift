//
//  PageIndicatorViewFactory.swift
//
//
//  Created by Kilmer on 15/07/22.
//

import UIKit

open class PageIndicator: UIView {

    // MARK: - Properties

    private var currentPageIndex = 0
    private var pages = 0
    public var color: UIColor = .blue
    public var borderColor: UIColor = .blue

    private let containerStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 5
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    // MARK: - Functions

    public func setStyle(color: UIColor, borderColor: UIColor) {
        for (index, element) in containerStackView.arrangedSubviews.enumerated() {
            if index <= currentPageIndex {
                element.backgroundColor = color
            } else {
                element.backgroundColor = .white
                element.layer.borderColor = borderColor.cgColor
            }
        }
    }


    // MARK: - Init

    public init(pages: Int, currentPageIndex: Int, color: UIColor = .blue, borderColor: UIColor = .blue) {
        super.init(frame: .zero)
        self.color = color
        self.borderColor = borderColor
        self.pages = pages - 1
        self.currentPageIndex = currentPageIndex - 1
        setup(pages: self.pages, currentPageIndex: self.currentPageIndex)
        buildLayout()
        setStyle(color: self.color, borderColor: self.borderColor)
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        buildLayout()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        buildLayout()
    }

    // MARK: - FUNCTIONS
    private func setup(pages: Int, currentPageIndex: Int) {
        for dot in 0...pages {
            if dot == currentPageIndex {
                containerStackView.addArrangedSubview(PageIndicatorViewFactory.current())
            } else if dot < currentPageIndex {
                containerStackView.addArrangedSubview(PageIndicatorViewFactory.completed())
            } else {
                containerStackView.addArrangedSubview(PageIndicatorViewFactory.uncompleted())
            }
        }
    }

    /// remove all the StackView arrangedSubviews
    private func removeAllArrangedSubviews() {
        containerStackView.arrangedSubviews.forEach { view in
            view.removeFromSuperview()
        }
    }

    /// go foward one step
    public func next() {
        removeAllArrangedSubviews()
        currentPageIndex += 1
        setup(pages: pages, currentPageIndex: currentPageIndex)
        setStyle(color: self.color, borderColor: self.borderColor)
    }

   /// back dot one step
    public func previous() {
        removeAllArrangedSubviews()
        currentPageIndex -= 1
        setup(pages: pages, currentPageIndex: currentPageIndex)
        setStyle(color: self.color, borderColor: self.borderColor)
    }
}

// MARK: - Add Subviews & Setup Constraints

extension PageIndicator {

    private func buildLayout() {
        buildViewHierarchy()
        setupConstraints()
    }

    private func buildViewHierarchy() {
        addSubview(containerStackView)
    }

    private func setupConstraints() {
        widthAnchor.constraint(equalTo: containerStackView.widthAnchor).isActive = true
        heightAnchor.constraint(equalTo: containerStackView.heightAnchor).isActive = true

        containerStackView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        containerStackView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
}
