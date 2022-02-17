//
//  ViewController.swift
//  01_UIKit-and-UIViews
//
//  Created by Bülent Barış Kılıç on 17.02.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let myView = UIView(frame: CGRect(x: 50, y: 100, width: 200, height: 200))
        myView.backgroundColor = .red
        myView.clipsToBounds = true
        myView.alpha = 0.2
        myView.transform = CGAffineTransform(rotationAngle: CGFloat.pi/4.0)
        
        let mySecondView = UIView(frame: CGRect(x: 50, y: 50, width: 200, height: 200))
        mySecondView.backgroundColor = .purple
        
        myView.addSubview(mySecondView)
        view.addSubview(myView)
        
        let myLabel = UILabel(frame: CGRect(x: 50, y: 300, width: 200, height: 200))
        myLabel.text = "Hello Welt 😜"
        myLabel.textAlignment = .center
        
        view.addSubview(myLabel)
        myLabel.transform = CGAffineTransform(rotationAngle: CGFloat.pi/4.0)
        
        let myImageView = UIImageView(frame: CGRect(x: 50, y: 500, width: 200, height: 100))
        //myImageView.image = UIImage(named: "swift_image")
        myImageView.image = UIImage(systemName: "pencil")
        myImageView.tintColor = .purple
        myImageView.backgroundColor = .red.withAlphaComponent(0.2)
        myImageView.contentMode = .scaleAspectFit
        
        view.addSubview(myImageView)
    }


}

