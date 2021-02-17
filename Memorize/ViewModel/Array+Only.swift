//
//  Array+Only.swift
//  Memorize
//
//  Created by Troye on 2021/2/17.
//

import Foundation

extension Array {
    var only : Element? {
        count == 1 ? first : nil
    }
}
