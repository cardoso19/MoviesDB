//
//  BaseDimension.swift
//  UIExtensions
//
//  Created by Matheus Kuhn on 23.12.24.
//

import Foundation

public enum BaseDimension {
    private static let baseValue: CGFloat = 8
    
    public static func times(_ value: CGFloat) -> CGFloat {
        baseValue * value
    }
}
