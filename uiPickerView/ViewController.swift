//
//  ViewController.swift
//  uiPickerView
//
//  Created by dit03 on 2019. 4. 17..
//  Copyright © 2019년 201835867. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var outLabel: UILabel!
    @IBOutlet weak var mPickerView: UIPickerView!
    var color = ["Red", "Green", "Blue","White","Yellow","Gray"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mPickerView.delegate = self
        mPickerView.dataSource = self
        outLabel.text = color[0]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return color.count
    }
    
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return color[row]
    }
    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        outLabel.text = color[row]
    }
    
    public func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 70.0
    }
    


}

