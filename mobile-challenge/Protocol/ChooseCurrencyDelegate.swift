//
//  Reachability.swift
//  conversor-monetario
//
//  Created by Reginaldo Viana on 19/08/21.
//

import Foundation

enum CurrencySelectedEnum {
    case left
    case right
}

protocol ChooseCurrencyDelegate {
    func didSelected(currencyDescription: CurrencyDescription, type: CurrencySelectedEnum)
}
