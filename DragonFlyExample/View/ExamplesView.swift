//
//  ExamplesView.swift
//  DragonFlyExample
//
//  Created by Brena Amorim on 27/07/21.
//

import UIKit

class ExamplesView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var nameFunction: UILabel = {
        var label = UILabel()
        label.text = "Dragon Fly"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 34)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var hexaButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var rgbButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var randomButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var lightButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var darkButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    func setUI() {
        self.backgroundColor = .white
        addSubview(nameFunction)
        addSubview(hexaButton)
        addSubview(rgbButton)
        addSubview(randomButton)
        addSubview(lightButton)
        addSubview(darkButton)
        setupConstraints()
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            nameFunction.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 32),
            nameFunction.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16)
        ])
        
        NSLayoutConstraint.activate([
            hexaButton.topAnchor.constraint(equalTo: nameFunction.bottomAnchor, constant: 16),
            hexaButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            hexaButton.heightAnchor.constraint(equalToConstant: 100),
            hexaButton.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
            rgbButton.topAnchor.constraint(equalTo: hexaButton.bottomAnchor, constant: 16),
            rgbButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            rgbButton.heightAnchor.constraint(equalToConstant: 100),
            rgbButton.widthAnchor.constraint(equalToConstant: 100)
        ])

        NSLayoutConstraint.activate([
            randomButton.topAnchor.constraint(equalTo: rgbButton.bottomAnchor, constant: 16),
            randomButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            randomButton.heightAnchor.constraint(equalToConstant: 100),
            randomButton.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
            lightButton.topAnchor.constraint(equalTo: randomButton.bottomAnchor, constant: 16),
            lightButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            lightButton.heightAnchor.constraint(equalToConstant: 100),
            lightButton.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
            darkButton.topAnchor.constraint(equalTo: lightButton.bottomAnchor, constant: 16),
            darkButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            darkButton.heightAnchor.constraint(equalToConstant: 100),
            darkButton.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
}
