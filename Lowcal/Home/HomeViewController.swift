//
//  ViewController.swift
//  Lowcal
//
//  Created by Sohila on 31/05/2023.
//

import UIKit

class HomeViewController: UIViewController {

    let color = colors()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    override func viewDidAppear(_ animated: Bool) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor(red: 0.9647058824, green: 0.9647058824, blue: 0.9647058824, alpha: 1.0).cgColor,
                                UIColor(red: 0.9960784314, green: 0.9960784314, blue: 0.9960784314, alpha: 1.0).cgColor,
                                UIColor(red: 0.8980392157, green: 0.9490196078, blue: 0.937254902, alpha: 1.0).cgColor]
        
//        [UIColor.red.cgColor, UIColor.blue.cgColor, UIColor.green.cgColor]
        
//        gradientLayer.transform = CATransform3DMakeRotation(CGFloat.pi, 0, 0, 1)
//        as 180
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 0.0)
        //gradientLayer from top to botton
//        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
//        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
        gradientLayer.frame = view.bounds

        view.layer.insertSublayer(gradientLayer, at: 0)
    }


}


class colors{
    var gl: CAGradientLayer!
    
    init(){
//        let color1 = #colorLiteral(red: 0.9647058824, green: 0.9647058824, blue: 0.9647058824, alpha: 1)
//        let color2 = #colorLiteral(red: 0.9960784314, green: 0.9960784314, blue: 0.9960784314, alpha: 1)
//        let color3 = #colorLiteral(red: 0.8980392157, green: 0.9490196078, blue: 0.937254902, alpha: 1)
        
        self.gl = CAGradientLayer()
//        self.gl.colors = [color1, color2, color3]
        self.gl.startPoint = CGPoint(x: 0.0, y: 0.5)
        self.gl.endPoint = CGPoint(x: 1.0, y: 0.5)
    }
}
