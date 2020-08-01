//
//  ViewController.swift
//  PayState
//
//  Created by Jesse Barbieri on 7/31/20.
//  Copyright © 2020 JBBP Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource
{
        
        let stateArray = ["New Jersey", "New York"]

        override func viewDidLoad()
        {
        super.viewDidLoad()
        
        // Background Color
        self.view.backgroundColor = .purple
        
        // State Picker
        let UIPicker: UIPickerView = UIPickerView()
        
        UIPicker.delegate = self as UIPickerViewDelegate
        UIPicker.dataSource = self as UIPickerViewDataSource
        self.view.addSubview(UIPicker)
        UIPicker.center = self.view.center
        
        
        // Do any additional setup after loading the view.
        }
        
        // State Picker Functionality
        func numberOfComponents(in pickerView: UIPickerView) -> Int
            {
               return 1
            }
           
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
            {
               return stateArray.count
            }
           
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
            {
              let row = stateArray[row]
              return row
            }
        
}

