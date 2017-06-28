//
//  ViewController.swift
//  miracle pill v3
//
//  Created by Nao Kudo on 6/27/17.
//  Copyright © 2017 NaoKudo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var stateList: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    let states = ["Alaska","Washington","Oregon","California","New Mexico","Nevada","Arizona","Idaho","Utah","Montana","Wyoming","Colorado","der"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stateList.dataSource = self
        stateList.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtn(_ sender: Any) {
        stateList.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        stateList.isHidden = true
    }
}

