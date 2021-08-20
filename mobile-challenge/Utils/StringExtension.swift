//
//  StringExtension.swift
//  conversor-monetario
//
//  Created by Reginaldo Viana on 19/08/21.
//

import Foundation

extension String {
    var currencyFormat: String {
        get {
            var number: NSNumber!
            let formatter = NumberFormatter()
            formatter.numberStyle = .decimal
            formatter.locale = Locale(identifier: "pt_BR")
            formatter.maximumFractionDigits = 2
            formatter.minimumFractionDigits = 2
            
            var amountWithPrefix = self
            
            let regex = try! NSRegularExpression(pattern: "[^0-9]", options: .caseInsensitive)
            amountWithPrefix = regex.stringByReplacingMatches(in: amountWithPrefix, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSMakeRange(0, self.count ), withTemplate: "")
            
            let double = (amountWithPrefix as NSString).doubleValue
            number = NSNumber(value: (double / 100))
            
            guard let n = number, n != 0 as NSNumber else {
                return "0,00"
            }
            return formatter.string(from: number)!
        }
    }
}
