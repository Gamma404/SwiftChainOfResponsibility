//
// Created by Apple on 2018/8/10.
// Copyright (c) 2018 Gamma. All rights reserved.
//

import Foundation

class Boss :Chain {
    private var _nextManagementLevel : Chain?
        var nextManagementLevel : Chain{
            get{
               return _nextManagementLevel!
            }
            
            set {
                _nextManagementLevel = newValue
            }
        }

    func shouldApproveExpenditure(expenditure: Expenditure) {
        if expenditure.amount > 100 && expenditure.amount < 1000{
            print("Boss can approve this expenditure")
        }else {
            if _nextManagementLevel != nil{
                nextManagementLevel.shouldApproveExpenditure(expenditure: expenditure)
            }
        }
    }
}
