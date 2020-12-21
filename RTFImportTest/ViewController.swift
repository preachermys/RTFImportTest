//
//  ViewController.swift
//  RTFImportTest
//
//  Created by Preacher on 21.12.2020.
//  Copyright © 2020 Yulia Milovanova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tv: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = Bundle.main.url(forResource: "test2", withExtension: "rtf")!
        let opts : [NSAttributedString.DocumentReadingOptionKey : Any] =
            [.documentType : NSAttributedString.DocumentType.rtf]
        let s = try! NSAttributedString(url: url, options: opts, documentAttributes: nil)
        self.tv.attributedText = s
    }


}

