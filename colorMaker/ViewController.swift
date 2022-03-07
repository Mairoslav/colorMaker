//
//  ViewController.swift
//  colorMaker
//
//  Created by mairo on 03/03/2022.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Outlets
    
    // via keyword @IBOutlet make them recognizable for storyboard
    // need to add weak keyword? now w/o
    
    @IBOutlet var colorPalette: UIView!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    // MARK: Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: Actions
    
    @IBAction func colorMix() { // (_ sender: AnyObject)
        
        if self.redSlider == nil {
            return
        } // Make sure the program doesn't crash if the controls aren't connected, can skip
        
        // sliders give Float value between 0 and 1, but the UIColor object must be constructed with CGFloat values
        // if you have a Float and you need a CGFloat you can use the CGFloat constructor to convert between them
            // let f: Float = 0.5
            // let cgf: CGFloat = CGFloat(f)
        
        let r: CGFloat = CGFloat(self.redSlider.value)
        let g: CGFloat = CGFloat(self.greenSlider.value)
        let b: CGFloat = CGFloat(self.blueSlider.value)
        
        colorPalette.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }
}

