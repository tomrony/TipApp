//
//  SeparateView.swift
//  TipApp
//
//  Created by Qingzhi Luo on 2020/1/26.
//  Copyright © 2020 Qingzhi Luo. All rights reserved.
//

import UIKit

class SeparateView: UIViewController {

    
    @IBOutlet weak var finalAmount: UILabel!
    var finalBill: Double = 0
    
    
    
    @IBOutlet weak var text: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        finalAmount.text = String(format: "$%.2f" , finalBill)
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
   
    
    
}
