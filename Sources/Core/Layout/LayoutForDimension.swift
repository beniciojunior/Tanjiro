//
//  LayoutConstraint.swift
//  Tanjiro-iOS
//
//  Created by jean.vinge on 24/07/19.
//  Copyright © 2019 jeanvinge. All rights reserved.
//

import UIKit

public struct LayoutForDimension<Anchor: LayoutDimension> {
    internal let anchor: Anchor
}

public extension LayoutForDimension {

    func constraint(equalToConstant c: CGFloat = 0) -> NSLayoutConstraint {
        let c = anchor.constraint(equalToConstant: c)
        c.isActive = true
        return c
    }

    func constraint(greaterThanOrEqualToConstant c: CGFloat = 0) -> NSLayoutConstraint {
        let c = anchor.constraint(greaterThanOrEqualToConstant: c)
        c.isActive = true
        return c
    }

    func constraint(lessThanOrEqualToConstant c: CGFloat = 0) -> NSLayoutConstraint {
        let c = anchor.constraint(lessThanOrEqualToConstant: c)
        c.isActive = true
        return c
    }
}
