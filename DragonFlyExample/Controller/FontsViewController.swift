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

    let font = UIFont(name: "DancingScript-Regular", size: 2)
    lazy var fontCustom = Font(font: font)!
    let fontSystem = Font(font: .systemFont(ofSize: 0))!

    override func viewDidLoad() {
        super.viewDidLoad()
        setFont()
    }

    override func loadView() {
        super.loadView()
        self.view = contentView
    }
    
    private func setFont() {
        contentView.large.font = fontCustom.large()
        contentView.title1.font = fontSystem.title1()
        contentView.title2.font = fontSystem.title2()
        contentView.title3.font = fontSystem.title3()
        contentView.headline.font = fontSystem.headline()
        contentView.body.font = fontSystem.body()
        contentView.callout.font = fontSystem.callout()
        contentView.subhead.font = fontSystem.subhead()
        contentView.footnote.font = fontSystem.footnote()
        contentView.caption1.font = fontSystem.caption1()
        contentView.caption2.font = fontSystem.caption2()
    }
}
