//
//  ViewController.swift
//  02_UIControls
//
//  Created by Bülent Barış Kılıç on 17.02.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let button = UIButton(type: .system)
        button.setTitle("Push", for: .normal)
        button.setTitle("Pushed", for: .highlighted)
        button.frame = CGRect(x: 20, y: 20, width: 200 , height: 100)
        button.addTarget(self, action: #selector(doSomething), for: .touchUpInside)
        
        view.addSubview(button)
    }
    
    @objc  func doSomething(_ sender: UIButton)
    {
        print("Pushed")
    }

    @IBAction func touchUpButton(_ sender: UIButton) {
        print("hello")
    }
    
    @IBAction func touchDown(_ sender: UIButton) {
        
        print("touch down")
    }
    @IBAction func sliderListener(_ slider: UISlider) {
        print("value changed to \(slider.value)")
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        print("position: \(sender.isOn)")
    }
}

