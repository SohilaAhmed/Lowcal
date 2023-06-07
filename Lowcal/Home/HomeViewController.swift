//
//  ViewController.swift
//  Lowcal
//
//  Created by Sohila on 31/05/2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var circleProgressView: UIView!
    
    var selectedPackage: Int?
    var selectedDay = 0
    var selectedPackagePeriod = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        desginTFView(view: headerView)
        circleView(cView: circleProgressView)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor(red: 0.9647058824, green: 0.9647058824, blue: 0.9647058824, alpha: 1.0).cgColor,
                                UIColor(red: 0.9960784314, green: 0.9960784314, blue: 0.9960784314, alpha: 1.0).cgColor,
                                UIColor(red: 0.8980392157, green: 0.9490196078, blue: 0.937254902, alpha: 1.0).cgColor]
        
        gradientLayer.startPoint = CGPoint(x: 1, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1.0)
        gradientLayer.frame = view.bounds
        
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    func desginTFView(view: UIView){
        view.layer.cornerRadius = 20
        view.layer.masksToBounds = true
    }
    
    func circleView(cView: UIView){
        var circleLayer = CAShapeLayer()
        var progressLayer = CAShapeLayer()
        var startPoint = CGFloat(-Double.pi / 2)
        var endPoint =  startPoint + CGFloat(2 * Double.pi )
//        var endPoint = CGFloat(3 * Double.pi / 2)
        
        let center = cView.center
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor(red: 0.7529411765, green: 0.9215686275, blue: 0.8980392157, alpha: 1.0).cgColor,
                                UIColor(red: 125.0 / 255.0, green: 198.0 / 255.0, blue: 188.0 / 255.0, alpha: 1.0).cgColor]
        
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.5)
        
        
        let circularPath = UIBezierPath(arcCenter: CGPoint(x: cView.frame.size.width / 2.0, y: cView.frame.size.height / 2.0), radius: 60, startAngle: startPoint, endAngle: endPoint, clockwise: true)
        
        circleLayer.path = circularPath.cgPath
        
        circleLayer.fillColor = UIColor.clear.cgColor
        circleLayer.lineCap = .round
        circleLayer.lineWidth = 7.0
        circleLayer.strokeEnd = 1.0
        let color = #colorLiteral(red: 0.9490196078, green: 0.9450980392, blue: 0.9450980392, alpha: 1)
        circleLayer.strokeColor = color.cgColor
         
        progressLayer.path = circularPath.cgPath
        
        progressLayer.fillColor = UIColor.clear.cgColor
        progressLayer.lineCap = .round
        progressLayer.lineWidth = 7.0
        progressLayer.strokeEnd = 0.7
        progressLayer.strokeColor = UIColor.green.cgColor
        
        gradientLayer.frame = cView.bounds
        gradientLayer.mask = progressLayer
        
        
        let imageView = UIImageView(image: UIImage(named: "Path 6667"))
        let x = (cView.frame.size.width / 2.0) + (60 * cos(0.6 * endPoint))
        let y = (cView.frame.size.height / 2.0) + (60 * sin(0.6 * endPoint))
        imageView.frame = CGRect(x: x - 12, y: y - 12 , width: 24, height: 24)
//        imageView.frame = CGRect(x: circularPath.currentPoint.x - 8 , y: circularPath.currentPoint.y - 8, width: 23, height: 23)
        
        
        cView.layer.addSublayer(circleLayer)
        cView.layer.addSublayer(gradientLayer)
        cView.addSubview(imageView)
    }
    
}


