//
//  ViewController.swift
//  Font&Svgs
//
//  Created by Siddhesh Redkar on 20/09/21.
//

import UIKit
import Foundation
import SVGKit

class ViewController: UIViewController {
    let titleLabel:UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let dispalyImage:UIImageView = {
        let img = UIImageView()
        img.backgroundColor = .red
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.font = UIFont.Rubik(.italic, size: 24)
        titleLabel.text = "Hello"
       // let bunny: SVGKImage = SVGKImage(named: "bunny")
        dispalyImage.image = Svgs.bunny?.uiImage
        view.addSubview(titleLabel)
        view.addSubview(dispalyImage)
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: 20),
            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        
            dispalyImage.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant: 100),
            dispalyImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dispalyImage.widthAnchor.constraint(equalToConstant: 100),
            dispalyImage.heightAnchor.constraint(equalToConstant: 100),
        ])
    }
}

