//
//  ViewController.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  //MARK: - UI
  
  @IBOutlet weak var bitCoinLabel: UILabel!
  @IBOutlet weak var currrency: UILabel!
  @IBOutlet weak var pickerView: UIPickerView!
  
  
  //MARK: - Life cycle
  
  private var coinManager = CoinManager()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.pickerView.delegate = self
    self.pickerView.dataSource = self
  }
}


// MARK: - UIPickerViewDelegate, UIPickerViewDataSource

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    1
  }

  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    coinManager.currencyArray.count
  }
}
