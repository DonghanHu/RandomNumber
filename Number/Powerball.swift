//
//  Powerball.swift
//  Number
//
//  Created by Donghan Hu on 12/3/19.
//  Copyright © 2019 Donghan Hu. All rights reserved.
//

import UIKit

class Powerball: UIViewController {
    
    var list = [Int]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        firstNumberGenerate()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var firstNumber: UILabel!
    
    func firstNumberGenerate(){
        while list.count < 5 {
            let number = Int.random(in: 1 ..< 69)
            if list.contains(number){
            }
            else {
                list.append(number)
            }
        }
        list.sort()
        var finalResult = ""
        for i in 0...4{
            finalResult = finalResult + String(list[i]) + ","
            
        }
        let blueNumber = Int.random(in: 1 ..< 26)
        
        finalResult += String(blueNumber)
        
        firstNumber.text = finalResult
        
    }
    
    @IBAction func generateAgain(_ sender: Any) {
        list = [Int]()
        firstNumberGenerate()
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
