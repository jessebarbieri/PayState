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
        // State Array for UIPicker
        let stateArray = ["Alabama", "Alaska", "Arizona", "Arkansas","California","Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine" , "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada","New Jersey","New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"]

        override func viewDidLoad()
        {
        super.viewDidLoad()
        
        // Background Color
        self.view.backgroundColor = .purple
            
        // App Title (Label)
        let titleLabel = UILabel(frame: CGRect(x: 100, y: 200, width: 300, height: 500))
            titleLabel.center = CGPoint(x: self.view.frame.width/2, y: 200)
            titleLabel.textAlignment = .center
            titleLabel.numberOfLines = 3
            titleLabel.text = "Welcome \nto \nPayState"
            titleLabel.textColor = .white
            titleLabel.font = UIFont(name: "HelveticaNeue-BoldItalic", size: 40.0)
            self.view.addSubview(titleLabel)
            
        // Instructions (Label)
        let instrLabel = UILabel(frame: CGRect(x: 10, y: 10, width: 300, height: 500))
            instrLabel.center = CGPoint(x: self.view.frame.width/2, y: 350)
            instrLabel.textAlignment = .center
            instrLabel.numberOfLines = 0
            instrLabel.text = "Select the state you are currently working in."
            instrLabel.textColor = .white
            instrLabel.font = UIFont(name: "HelveticaNeue-Medium", size: 20.0)
            self.view.addSubview(instrLabel)
        
        
        // State Picker
        let UIPicker: UIPickerView = UIPickerView()
            UIPicker.delegate = self as UIPickerViewDelegate
            UIPicker.dataSource = self as UIPickerViewDataSource
            self.view.addSubview(UIPicker)
            UIPicker.center = CGPoint(x: self.view.frame.width/2, y: 500)
        
        
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

