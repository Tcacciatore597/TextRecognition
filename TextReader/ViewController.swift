//
//  ViewController.swift
//  TextReader
//
//  Created by Thomas Cacciatore on 2/27/20.
//  Copyright © 2020 Thomas Cacciatore. All rights reserved.
//

import UIKit
import TesseractOCR

class ViewController: UIViewController, G8TesseractDelegate {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let tesseract: G8Tesseract = G8Tesseract(language: "eng") {
            tesseract.delegate = self
            tesseract.image = UIImage(named: "Lenore")!
            tesseract.recognize()
            textView.text = tesseract.recognizedText
        }
        
        
    }


}

