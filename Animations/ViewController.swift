//
//  ViewController.swift
//  Animations
//
//  Created by Roberto Miron Najera on 16/11/22.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    @IBOutlet var segmentedControl: UISegmentedControl!
    var animationView : LottieAnimationView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fish = LoaderView(frame: CGRect(x:0, y:0, width: 400, height: 500), animationName: "party")
        fish.center = self.view.center
        animationView = fish.animationView
        view.backgroundColor = .cyan
        
        self.view.addSubview(animationView!)
        
        animationView?.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        animationView?.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }

    @IBAction func indexChange(_ sender: Any) {
        animationView?.removeFromSuperview()
        switch segmentedControl.selectedSegmentIndex
            {
            case 0:
                let animate = LoaderView(frame: CGRect(x:0, y:0, width: 400, height: 500), animationName: "party")
                animate.center = self.view.center
                animationView = animate.animationView
            view.backgroundColor = .black
            case 1:
                let animate = LoaderView(frame: CGRect(x:0, y:0, width: 400, height: 500), animationName: "parrot")
                animate.center = self.view.center
                animationView = animate.animationView
            view.backgroundColor = .red
            case 2:
                let animate = LoaderView(frame: CGRect(x:0, y:0, width: 400, height: 500), animationName: "beer")
                animate.center = self.view.center
                animationView = animate.animationView
            view.backgroundColor = .systemGreen
            default:
                break
            }
        
        self.view.addSubview(animationView!)
        
        animationView?.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        animationView?.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
    }
    
}

