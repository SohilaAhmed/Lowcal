//
//  TestHeaderViewController.swift
//  Lowcal
//
//  Created by Sohila on 01/06/2023.
//

import UIKit

class TestHeaderViewController: UIViewController {
    
        @IBOutlet weak var cirProgressBarView: UIView!
    //    @IBOutlet weak var calText: UILabel!
    //    @IBOutlet weak var fView: UIView!
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        circleView(cView: cirProgressBarView)
    }
     
    
    
    
    func circleView(cView: UIView){
        var circleLayer = CAShapeLayer()
        var progressLayer = CAShapeLayer()
        var startPoint = CGFloat(-Double.pi / 2)
        var endPoint = CGFloat(3 * Double.pi / 2)
        
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
//        circleLayer.strokeEnd = 1.0
        circleLayer.strokeColor = UIColor.white.cgColor
        
         
       
        progressLayer.path = circularPath.cgPath
       
        progressLayer.fillColor = UIColor.clear.cgColor
        progressLayer.lineCap = .round
        progressLayer.lineWidth = 7.0
        progressLayer.strokeEnd = 0.7
        progressLayer.strokeColor = UIColor.green.cgColor
        
        gradientLayer.frame = cView.bounds
        gradientLayer.mask = progressLayer
        
        cView.layer.addSublayer(circleLayer)
        cView.layer.addSublayer(gradientLayer)
    }
    
    func addGradient(){
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor(red: 0.7529411765, green: 0.9215686275, blue: 0.8980392157, alpha: 1.0).cgColor,
                                UIColor(red: 125.0 / 255.0, green: 198.0 / 255.0, blue: 188.0 / 255.0, alpha: 1.0).cgColor]
        
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.0)
        gradientLayer.frame = view.bounds
//        = #colorLiteral(red: 0.4901960784, green: 0.7764705882, blue: 0.737254902, alpha: 1)
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}


class CircularProgressBarView: UIView {
    
    private var circleLayer = CAShapeLayer()
    private var progressLayer = CAShapeLayer()
    private var startPoint = CGFloat(-Double.pi / 2)
    private var endPoint = CGFloat(3 * Double.pi / 2)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func createCircularPath() {
        // created circularPath for circleLayer and progressLayer
        let circularPath = UIBezierPath(arcCenter: CGPoint(x: frame.size.width / 2.0, y: frame.size.height / 2.0), radius: 80, startAngle: startPoint, endAngle: endPoint, clockwise: true)
        // circleLayer path defined to circularPath
        circleLayer.path = circularPath.cgPath
        // ui edits
        circleLayer.fillColor = UIColor.clear.cgColor
        circleLayer.lineCap = .round
        circleLayer.lineWidth = 20.0
        circleLayer.strokeEnd = 1.0
        circleLayer.strokeColor = UIColor.white.cgColor
        // added circleLayer to layer
        layer.addSublayer(circleLayer)
        // progressLayer path defined to circularPath
        progressLayer.path = circularPath.cgPath
        // ui edits
        progressLayer.fillColor = UIColor.clear.cgColor
        progressLayer.lineCap = .round
        progressLayer.lineWidth = 10.0
        progressLayer.strokeEnd = 0
        progressLayer.strokeColor = UIColor.green.cgColor
        // added progressLayer to layer
        layer.addSublayer(progressLayer)
    }
    func progressAnimation(duration: TimeInterval) {
        // created circularProgressAnimation with keyPath
        let circularProgressAnimation = CABasicAnimation(keyPath: "strokeEnd")
        // set the end time
        circularProgressAnimation.duration = duration
        circularProgressAnimation.toValue = 1.0
        circularProgressAnimation.fillMode = .forwards
        circularProgressAnimation.isRemovedOnCompletion = false
        progressLayer.add(circularProgressAnimation, forKey: "progressAnim")
    }
}


class colors{
    var gl: CAGradientLayer!
    
    init(){
//        let color1 = #colorLiteral(red: 0.9490196078, green: 0.9450980392, blue: 0.9450980392, alpha: 1)
//        let color2 = #colorLiteral(red: 0.9960784314, green: 0.9960784314, blue: 0.9960784314, alpha: 1)
//        let color3 = #colorLiteral(red: 0.8980392157, green: 0.9490196078, blue: 0.937254902, alpha: 1)
        
        self.gl = CAGradientLayer()
//        self.gl.colors = [color1, color2, color3]
        self.gl.startPoint = CGPoint(x: 0.0, y: 0.5)
        self.gl.endPoint = CGPoint(x: 1.0, y: 0.5)
    }
}
