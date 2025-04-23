//
//  API.swift
//  ByteCoin
//
//  Created by 이상지 on 4/23/25.
//  Copyright © 2025 The App Brewery. All rights reserved.
//

import Foundation

private enum API {
    static let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    static let apiKey: String = {
        guard let path = Bundle.main.path(forResource: "Secrets", ofType: "plist"),
              let dict = NSDictionary(contentsOfFile: path),
              let key = dict["CoinAPIKey"] as? String else {
            fatalError("API Key가 설정되지 않음")
        }
        return key
    }()
}
