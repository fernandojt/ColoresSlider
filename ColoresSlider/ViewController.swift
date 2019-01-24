//
//  ViewController.swift
//  ColoresSlider
//
//  Created by Fernando Jt on 2/4/18.
//  Copyright © 2018 Fernando Jumbo Tandazo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var green : Float = 0
    var blue : Float = 0
    var red : Float = 0
    
    
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        valores()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func greenAction(_ sender: UISlider) {
        green = sender.value
        colores(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue))
        UserDefaults.standard.set(green, forKey: "green")
    }
    
    
    @IBAction func blueAction(_ sender: UISlider) {
        blue = sender.value
        colores(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue))
        UserDefaults.standard.set(blue, forKey: "blue")
    }
    
    
    @IBAction func redAction(_ sender: UISlider) {
        red = sender.value
         colores(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue))
        UserDefaults.standard.set(red, forKey: "red")
    }
    
    func colores(red: CGFloat, green: CGFloat, blue: CGFloat){
        view.backgroundColor = UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1.0)
    }
    
    func valores(){
        if let r = UserDefaults.standard.object(forKey: "red") as? CGFloat,
        let g = UserDefaults.standard.object(forKey: "green") as? CGFloat,
            let b = UserDefaults.standard.object(forKey: "blue") as? CGFloat {
            colores(red: r, green: g, blue: b)
            
            redSlider.value = Float(r)
            greenSlider.value = Float(g)
            blueSlider.value = Float(b)
        }
    }
    
}

