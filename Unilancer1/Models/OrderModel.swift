//
//  OrderModel.swift
//  Unilancer1
//
//  Created by Reem Alharthi on 20/11/1443 AH.
//

import Foundation

enum status {
    case canceld
    case confirmed
    case accapt
    case Pyament
    case execution
    case deliverd
}
struct ordreInfo : Identifiable{
    let id : UUID
    var developName : String
    var developImage : String
    var progress: Float
    var serviceName : String
    var startDate : String
    var endDate : String
    var cost :Double
    var statusName : String
    var statusOrdre : status
}
