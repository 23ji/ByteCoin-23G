//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

protocol CoinManagerDelegate {
  
}


struct CoinManager {
  
  var delegate: CoinManagerDelegate?
  
  private enum API {
    static let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    static let apiKey = "REMOVED"
  }
  
  let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
  
  func updateCurrency(currency: String) {
    let urlString = "\(API.baseURL)/\(currency)?apikey=\(API.apiKey)"
    
    guard let url = URL(string: urlString) else { return }
    
    let session = URLSession(configuration: .default)
    
    let task = session.dataTask(with: url) { data, _, error in
      <#code#>
    }
    task.resume()
  }
}
