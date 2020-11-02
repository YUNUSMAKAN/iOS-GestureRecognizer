//
//  ViewController.swift
//  GESTURE-RECOGNIZER
//
//  Created by MAKAN on 28.09.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var tavsan = true
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //TAPPED GESTURE (RESME DOKUNUNCA DEGISSIN)
        imageView.isUserInteractionEnabled = true //Kullanici resmin ustune tiklayabilsin.Resim tiklanabilir olsun yaptik.
        
        
        //GESTURE ROCEGNIZER
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func changePic () {
        if tavsan == true {
            //TIKLAYINCA DIGER RESME GECIS YAPICAK!
            imageView.image = UIImage(named: "kus")
            nameLabel.text = "KUS"
            tavsan = false
            
        } else {
            //TIKLAYINCA DIGER RESME GECIS YAPICAK!
            imageView.image = UIImage(named: "tavsan")
            nameLabel.text = "TAVSAN"
            tavsan = true
        }
        
    }

}

