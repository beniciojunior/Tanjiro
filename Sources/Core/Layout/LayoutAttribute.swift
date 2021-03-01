//  LayoutProperty.swift
//  Tanjiro-iOS
//
//  Created by jean.vinge on 25/07/19.
//  Copyright © 2019 jeanvinge. All rights reserved.
//

import UIKit

public struct LayoutAttribute<Anchor: LayoutAnchor> {
    internal let anchor: Anchor
    internal let superViewAnchor: Anchor?
}

public extension LayoutAttribute {
    @discardableResult func equal(to otherAnchor: Anchor, offsetBy constant: CGFloat = 0) -> NSLayoutConstraint? {
        let c = anchor.constraint(equalTo: otherAnchor, constant: constant)
        c.isActive = true
        return c
    }

    @discardableResult func greaterThanOrEqual(to otherAnchor: Anchor,
                                               offsetBy constant: CGFloat = 0) -> NSLayoutConstraint? {
        let c = anchor.constraint(greaterThanOrEqualTo: otherAnchor, constant: constant)
        c.isActive = true
        return c
    }

    @discardableResult func lessThanOrEqual(to otherAnchor: Anchor,
                                            offsetBy constant: CGFloat = 0) -> NSLayoutConstraint? {
        let c = anchor.constraint(lessThanOrEqualTo: otherAnchor, constant: constant)
        c.isActive = true
        return c
    }

    @discardableResult func equalToSuperView(_ constant: CGFloat = 0) -> NSLayoutConstraint? {
        guard let superView = superViewAnchor else { return nil }
        let c = anchor.constraint(equalTo: superView, constant: constant)
        c.isActive = true
        return c
    }

    @discardableResult func greaterThanOrEqualToSuperView(_ constant: CGFloat = 0) -> NSLayoutConstraint? {
        guard let superView = superViewAnchor else { return nil }
        let c = anchor.constraint(greaterThanOrEqualTo: superView, constant: constant)
        c.isActive = true
        return c
    }

    @discardableResult func lessThanOrEqualToSuperView(to otherAnchor: Anchor,
                         offsetBy constant: CGFloat = 0) -> NSLayoutConstraint? {
        guard let superView = superViewAnchor else { return nil }
        let c = anchor.constraint(lessThanOrEqualTo: superView, constant: constant)
        c.isActive = true
        return c
    }
}
