//
//  RGSHueView.swift
//  colorGrandient
//
//  Created by Randel Smith on 7/14/16.
//  Copyright © 2016 Randel Smith rs@randelsmith.com. All rights reserved.
//

import UIKit

class RGSHueView: UIView {

    override class func layerClass() -> AnyClass {
        return CAGradientLayer.self
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()

    }
    
    private func commonInit()  {
        guard let gradientLayer = self.layer as? CAGradientLayer else { return }
        
        gradientLayer.startPoint = CGPointMake(0.0, 0.5)
        gradientLayer.endPoint = CGPointMake(1.0, 0.5)
        
        let colors : NSMutableArray = []
        var deq = 0
        while deq <= 360 {
            let color = UIColor(hue: 1.0 * CGFloat(deq) / 360.0, saturation: 1.0, brightness: 1.0, alpha: 1.0)
            colors.addObject(color.CGColor)
            
            deq += 5
        }
        gradientLayer.colors = colors as [AnyObject]

    }
}
