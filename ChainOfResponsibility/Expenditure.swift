//
// Created by Apple on 2018/8/10.
// Copyright (c) 2018 Gamma. All rights reserved.
//

import Foundation

class Expenditure {
    init(amount: Int) {
    }

    private var _amount = Int()
    var amount: Int {
        get {
            return _amount
        }

        set {
            _amount = newValue
        }
    }
}
