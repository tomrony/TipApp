//
//  ViewController.swift
//  TipApp
//
//  Created by Qingzhi Luo on 2019/12/23.
//  Copyright © 2019 Qingzhi Luo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DataSentDelegate {
    
    
    
    

    @IBOutlet weak var tipL: UILabel!
    @IBOutlet weak var totalL: UILabel!
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipCtrl: UISegmentedControl!
    
    @IBOutlet weak var II: UILabel!
    
    @IBOutlet weak var III: UILabel!
    
    @IBOutlet weak var IIII: UILabel!
//    var settingPage = SettingViewController()
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.billField.becomeFirstResponder()
        var theDefault : Double = UserDefaults.standard.double(forKey:"billFieldOne")
        
        
        billField.text =  String(format: "%.2f" , theDefault)
        
    }
    var i: Double = 0.15
      var j: Double = 0.18
     var k: Double = 0.2
    
    
    var billAmount: Double = 0
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
        
    }
      
   
    
    func setI( double : Double){
        i = double
    }
    
    
  
    
    
    
    @IBAction func ct(_ sender: Any) {
        
        let bill = Double(billField.text!) ?? 0
        
        
        let defaults = UserDefaults.standard
        defaults.set(billField.text, forKey: "billFieldOne")
        defaults.synchronize()
        
        let tipLvl :[Double] = [i,j,k]
        
        let tip = bill * tipLvl[tipCtrl.selectedSegmentIndex]
        let total = bill + tip
         
        
        billAmount = total
        
        
        
        let total2 = total * 0.5
        let total3 = total * 0.3333
        let total4 = total * 0.25
        
        tipL.text = String(format: "$%.2f" , tip)
        totalL.text = String(format: "$%.2f" , total)
        
        II.text = String(format: "$%.2f" , total2)
        III.text = String(format: "$%.2f" , total3)
        IIII.text = String(format: "$%.2f" , total4)
        
    }
    
    
    @IBAction func separate(_ sender: Any) {
        
        
    }
    
    func userSelectedValue(data: [Int]) {
        
        tipCtrl.setTitle( String(format: "%.2d%%",data[0] ), forSegmentAt: 0)
        tipCtrl.setTitle( String(format: "%d%%",data[1] ), forSegmentAt: 1)
        tipCtrl.setTitle( String(format: "%d%%",data[2] ), forSegmentAt: 2)
        
        i = Double(data[0]) * 0.01
        j = Double(data[1]) * 0.01
        k = Double(data[2]) * 0.01
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSettingPage"
        {
            let settingVC : SettingViewController = segue.destination as! SettingViewController
            settingVC.delegate = self
            
        }
        if segue.identifier == "setPeople"
        {
            let setPeople = segue.destination as! SeparateView
            setPeople.finalBill = billAmount
        }
    }
    
    @IBAction func setPeople(_ sender: Any) {
        
        performSegue(withIdentifier: "name", sender: self)
        
        
    }
    
    
    
   
}

