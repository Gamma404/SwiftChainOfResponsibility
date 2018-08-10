//
// Created by Apple on 2018/8/10.
// Copyright (c) 2018 Gamma. All rights reserved.
//

import Foundation

class CEO : Chain {

    private var _nextManagementLevel: Chain?
    var nextManagementLevel: Chain {
        get {
            return _nextManagementLevel!
        }

        set {
            _nextManagementLevel = newValue
        }
    }

    func shouldApproveExpenditure(expenditure: Expenditure) {
        if expenditure.amount > 1000 && expenditure.amount < 10000 {
            print("CEO can approve this expenditure")
        } else {
            print("No Support")
        }
    }
}
