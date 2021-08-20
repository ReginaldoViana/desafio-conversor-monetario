//
//  CurrencyModel.swift
//  conversor-monetario
//
//  Created by Reginaldo Viana on 19/08/21.
//

import Foundation

public struct CurrencyValueModel: Codable {
    public var quotes: [Quote]
    
    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        let quotes = try values.decode([String: Double].self, forKey: .quotes)
        
        self.quotes = quotes.compactMap { Quote(key: $0.key, value: $0.value) }
    }
}

public struct Quote: Codable {
    public var key: String = ""
    public var value: Double = 0.0
}
