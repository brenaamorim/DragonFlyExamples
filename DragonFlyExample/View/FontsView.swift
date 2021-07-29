//
//  FontsView.swift
//  DragonFlyExample
//
//  Created by Beatriz Carlos on 29/07/21.
//

import UIKit

class FontsView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var large: UILabel = {
        let label = UILabel()
        label.text = "Large"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var title1: UILabel = {
        let label = UILabel()
        label.text = "Title 1"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var title2: UILabel = {
        let label = UILabel()
        label.text = "Title 2"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var title3: UILabel = {
        let label = UILabel()
        label.text = "Title 3"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var headline: UILabel = {
        let label = UILabel()
        label.text = "Headline"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var body: UILabel = {
        let label = UILabel()
        label.text = "Body"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var callout: UILabel = {
        let label = UILabel()
        label.text = "Callout"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var subhead: UILabel = {
        let label = UILabel()
        label.text = "Subhead"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var footnote: UILabel = {
        let label = UILabel()
        label.text = "Footnote"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var caption1: UILabel = {
        let label = UILabel()
        label.text = "Caption 1"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var caption2: UILabel = {
        let label = UILabel()
        label.text = "Caption 2"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private func setupUI() {
        addSubview(large)
        addSubview(title1)
        addSubview(title2)
        addSubview(title3)
        addSubview(headline)
        addSubview(body)
        addSubview(callout)
        addSubview(footnote)
        addSubview(caption1)
        addSubview(caption2)
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            large.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 32),
            large.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16)
        ])
        
        NSLayoutConstraint.activate([
            title1.topAnchor.constraint(equalTo: large.bottomAnchor, constant: 14),
            title1.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16)
        ])
        
        NSLayoutConstraint.activate([
            title2.topAnchor.constraint(equalTo: title1.bottomAnchor, constant: 14),
            title2.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16)
        ])

        NSLayoutConstraint.activate([
            title3.topAnchor.constraint(equalTo: title2.bottomAnchor, constant: 14),
            title3.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16)
        ])
        
        NSLayoutConstraint.activate([
            headline.topAnchor.constraint(equalTo: title3.bottomAnchor, constant: 14),
            headline.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16)
        ])
        
        NSLayoutConstraint.activate([
            body.topAnchor.constraint(equalTo: headline.bottomAnchor, constant: 14),
            body.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16)
        ])
        
        NSLayoutConstraint.activate([
            callout.topAnchor.constraint(equalTo: body.bottomAnchor, constant: 14),
            callout.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16)
        ])
        
        NSLayoutConstraint.activate([
            footnote.topAnchor.constraint(equalTo: callout.bottomAnchor, constant: 14),
            footnote.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16)
        ])
        
        NSLayoutConstraint.activate([
            caption1.topAnchor.constraint(equalTo: footnote.bottomAnchor, constant: 14),
            caption1.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16)
        ])
        
        NSLayoutConstraint.activate([
            caption2.topAnchor.constraint(equalTo: caption1.bottomAnchor, constant: 14),
            caption2.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16)
        ])
    }
}
