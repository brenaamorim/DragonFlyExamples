//
//  ViewController.swift
//  DragonFlyExample
//
//  Created by Brena Amorim on 27/07/21.
//

import UIKit
import DragonFly

class ColorsViewController: UIViewController {

    let contentView = ColorsView(frame: UIScreen.main.bounds)
    let hexColor = Color(hex: "#FF5B5B")!
    let rgbColor = Color(red: 255, green: 91, blue: 91)!
    
    override func loadView() {
        self.view = contentView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        contentView.hexaButton.addTarget(self, action: #selector(hexaButtonTapped), for: .touchUpInside)
        contentView.rgbButton.addTarget(self, action: #selector(rgbButtonTapped), for: .touchUpInside)
        contentView.randomButton.addTarget(self, action: #selector(randomButtonTapped), for: .touchUpInside)
        contentView.lightButton.addTarget(self, action: #selector(lightButtonTapped), for: .touchUpInside)
        contentView.darkButton.addTarget(self, action: #selector(darkButtonTapped), for: .touchUpInside)
        contentView.gradientButton.addTarget(self, action: #selector(gradientButtonTapped), for: .touchUpInside)

    }
    
    @objc func hexaButtonTapped() {
        contentView.nameFunction.text = "Convert hexa to UIColor"
        contentView.hexaButton.backgroundColor = hexColor.color()
    }
    
    @objc func rgbButtonTapped() {
        contentView.nameFunction.text = "Convert RGB to UIColor"
        contentView.rgbButton.backgroundColor = rgbColor.color()
    }
    
    @objc func randomButtonTapped() {
        contentView.nameFunction.text = "Display a random color"
        contentView.randomButton.backgroundColor = Color.randomColor()
    }
    
    @objc func lightButtonTapped() {
        contentView.nameFunction.text = "Display lighter color"
        contentView.lightButton.backgroundColor = hexColor.lighter()
        
    }
    
    @objc func darkButtonTapped() {
        contentView.nameFunction.text = "Display darker color"
        contentView.darkButton.backgroundColor = rgbColor.darker()
    }
    
    @objc func gradientButtonTapped() {
        contentView.nameFunction.text = "Display darker color"
        // Create a gradient layer
        let gradientLayer = Color.gradient(UIColor.orange, secondColor: UIColor.yellow)
        // Set gradient frame
        gradientLayer?.frame = contentView.gradientButton.bounds
        
        // Add gradient to button
        contentView.gradientButton.layer.insertSublayer(gradientLayer!, at: 0)
    }
}

