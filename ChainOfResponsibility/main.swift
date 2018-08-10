//
//  main.swift
//  ChainOfResponsibility
//
//  Created by Apple on 2018/8/10.
//  Copyright © 2018年 Gamma. All rights reserved.
//

//三個角色
let employee = Employee()
let boss = Boss()
let ceo = CEO()

//角色的關係:鏈結的方向
employee.nextManagementLevel = boss
boss.nextManagementLevel = ceo

//開支物件
//Case 5元
let expenditure = Expenditure(amount: 5)
//員工開始往上報 誰可以支付
employee.shouldApproveExpenditure(expenditure: expenditure)

//Case 500元
expenditure.amount = 500
employee.shouldApproveExpenditure(expenditure: expenditure)

//Case 5000元
expenditure.amount = 5000
employee.shouldApproveExpenditure(expenditure: expenditure)

//Case 50000元
expenditure.amount = 50000
employee.shouldApproveExpenditure(expenditure: expenditure)


