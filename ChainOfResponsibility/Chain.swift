//
// Created by Apple on 2018/8/10.
// Copyright (c) 2018 Gamma. All rights reserved.
//

import Foundation

protocol Chain {
    var nextManagementLevel: Chain{get set}
    func shouldApproveExpenditure(expenditure: Expenditure)
}
