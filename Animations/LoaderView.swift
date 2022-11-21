//
//  LoaderView.swift
//  Animations
//
//  Created by Roberto Miron Najera on 16/11/22.
//

import UIKit
import Lottie

class LoaderView: UIView {
    var animationView: LottieAnimationView?
    
    init(frame: CGRect, animationName: String) {
        super.init(frame: frame)
        
        commonInit(animationName: animationName)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit(animationName: "fish")
    }
    
    func commonInit(animationName : String) {
        self.animationView = .init(name: animationName)
        self.animationView?.frame = CGRect(x:0, y:0, width: 400, height: 400)
        self.animationView?.center = self.center
        self.animationView?.animationSpeed = 0.2
        self.animationView?.contentMode = .scaleAspectFill
        //self.addSubview(animationView!)
        self.animationView?.play()
        self.animationView?.translatesAutoresizingMaskIntoConstraints = false
        self.animationView?.widthAnchor.constraint(equalToConstant: 280).isActive = true
        self.animationView?.heightAnchor.constraint(equalToConstant: 220).isActive = true
        
    }

}
