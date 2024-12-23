//
//  BaseDimension.swift
//  UIExtensions
//
//  Created by Matheus Kuhn on 23.12.24.
//

import Foundation

public enum BaseDimension {
    private var baseValue: CGFloat {
        8
    }
    
    func times(_ value: CGFloat) -> CGFloat {
        baseValue * value
    }
}
