//
//  SettingViewController.swift
//  TipApp
//
//  Created by Qingzhi Luo on 2019/12/24.
//  Copyright © 2019 Qingzhi Luo. All rights reserved.
//

import UIKit
protocol DataSentDelegate {
    
    func userSelectedValue(data : [Int])
    
}
class SettingViewController: UIViewController {
    
    var delegate : DataSentDelegate? = nil
    
    

   
    @IBOutlet weak var m1: UISlider!
    @IBOutlet weak var m2: UISlider!
    
    @IBOutlet weak var m3: UISlider!
    
    @IBOutlet weak var m1L: UILabel!
    
    @IBOutlet weak var m2L: UILabel!
    
    @IBOutlet weak var m3L: UILabel!
   
   var percentI : Int = 15
   var percentJ : Int = 18
   var percentK : Int = 20
    
    
    var theI : Double = 0.15
    var theJ : Double = 0.18
    var theK : Double = 0.2
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
     

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    
    @IBAction func Slider1(_ sender: Any) {
                                       
        m1L.text = String(format: "%.2d%%", Int(m1.value))
        percentI = Int(m1.value)
        theI = Double(percentI)
        
        
       
        
    }
    
    
    
    
    
    @IBAction func Slider2(_ sender: Any) {
        m2L.text = String(format: "%.2d%%", Int(m2.value))
          percentJ = Int(m2.value)
        theJ = Double(Int(m2.value))
    }
    

    @IBAction func Slider3(_ sender: Any) {
        m3L.text = String(format: "%.2d%%", Int(m3.value))
          percentK = Int(m3.value)
        theK = Double(Int(m3.value))
    }
    
    
    
//    func getI()-> Double{
//        let m1d = Double(m1.value * 0.01)
//        return m1d
//    }
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let VC = segue.destination as! ViewController
//
//
//        let m1d = m1.value * 0.01
//
//        let m2d = m2.value * 0.01
//
//         let m3d = m3.value * 0.01
//
//        VC.tipCtrl.setTitle(String(format:"%.2f", m1d), forSegmentAt: 1)
//
//        VC.tipCtrl.setTitle(String(format:"%.2f", m2d), forSegmentAt: 2)
//
//        VC.tipCtrl.setTitle(String(format:"%.2f", m3d), forSegmentAt: 3)
//
//
//
//
//    }
//    @IBAction func reset(_ sender: Any) {
//
//        delegate?.sentData(data: theI)
//        self.dismiss(animated: true, completion: nil)
//    }
    
    @IBAction func savePress(_ sender: Any) {
        if delegate != nil{
            let dataSet = [percentI , percentJ, percentK]
            delegate?.userSelectedValue(data: dataSet)
            
            let saveMessage = UIAlertController(title:
                "Saved", message: nil, preferredStyle: .alert)
            
            
//            let settingPage = SettingViewController()
            
            let action1 = UIAlertAction(title:"Confirm", style: .default)
            
            
//            {
//                (ACTION) in self.present(ViewController(), animated: true, completion: nil)
//
//            }
            
            saveMessage.addAction(action1)
            
            self.present(saveMessage, animated: true , completion: nil)
            
            
            
            
        }
    }
    
}


    
    
    

