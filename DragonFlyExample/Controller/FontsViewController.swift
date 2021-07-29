//
//  FontsViewController.swift
//  DragonFlyExample
//
//  Created by Beatriz Carlos on 29/07/21.
//

import UIKit
import DragonFly

class FontsViewController: UIViewController {
    let contentView = FontsView(frame: UIScreen.main.bounds)

    override func viewDidLoad() {
        super.viewDidLoad()
        setFont()
    }
    
    override func loadView() {
        super.loadView()
        self.view = contentView
    }
    
    private func setFont() {
        contentView.large.font = .systemFont(ofSize: 34)
        contentView.title1.font = .systemFont(ofSize: 28)
        contentView.title2.font = .systemFont(ofSize: 22)
        contentView.title3.font = .systemFont(ofSize: 20)
        contentView.headline.font = .systemFont(ofSize: 17)
        contentView.body.font = .systemFont(ofSize: 17)
        contentView.callout.font = .systemFont(ofSize: 16)
        contentView.subhead.font = .systemFont(ofSize: 15)
        contentView.footnote.font = .systemFont(ofSize: 13)
        contentView.caption1.font = .systemFont(ofSize: 12)
        contentView.caption2.font = .systemFont(ofSize: 11)
    }
}
