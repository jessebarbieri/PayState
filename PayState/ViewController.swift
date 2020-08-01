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
        
        let stateArray = ["Alabama", "Alaska", "Arizona", "Arkansas","California","Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine" , "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada","New Jersey","New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"]

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
           
        func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString?
            {
                // Return statement allows attributes to be assigned to the string values of the picker
                return NSAttributedString(
                    string: stateArray[row],
                    attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
                )
                
                // This is old code that previously defaulted picker color to black.
                //let row = stateArray[row]
                // return row
            }
        
}

