//
//  ViewController.swift
//  ExampleProject
//
//  Created by yujin.lee on 2022/07/10.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    let Quot = [
        Quote(contents: "맞고싶냐", name: "김인수"),
        Quote(contents: "밥차려", name: "김인수"),
        Quote(contents: "니가 뭘알아", name: "김인수"),
        Quote(contents: "진정해", name: "김인수")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func tapQuoteGenButton(_ sender: Any) {
    let random = Int(arc4random_uniform(4))
    let quote = Quot[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }

}

