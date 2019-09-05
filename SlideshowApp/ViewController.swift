//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 佐藤　由羽太 on 2019/09/01.
//  Copyright © 2019 jose_asia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nextBtnOutlet: UIButton!
    
    @IBOutlet weak var backBtnOutlet: UIButton!
    
    @IBAction func onTap(_ sender: Any) {
        performSegue(withIdentifier: "bigImage", sender: nil)
        timer.invalidate()
        nextBtnOutlet.isEnabled = true
        backBtnOutlet.isEnabled = true
    }
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    var timer = Timer()
    
    @IBAction func playStopBtn(_ sender: Any) {
        if self.timer.isValid == true{
            timer.invalidate()
            nextBtnOutlet.isEnabled = true
            backBtnOutlet.isEnabled = true
        }
        else{
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(slideShow(_:)), userInfo: nil, repeats: true)
            nextBtnOutlet.isEnabled = false
            backBtnOutlet.isEnabled = false
        }
    }
    
    @IBAction func nextBtn(_ sender: Any) {
            dispNo += 1
            displayImage()
    }
    
    @IBAction func backBtn(_ sender: Any) {
            dispNo -= 1
            displayImage()
    }
    
    @objc func slideShow(_ timer: Timer){
        self.dispNo += 1
        self.displayImage()
    }
    
    var dispNo = 0
    
    func displayImage() {

        let imageNameAllay = [
        "IMG_6375.JPG",
        "IMG_6376.JPG",
        "IMG_6377.JPG",
        "IMG_6378.JPG",
        "IMG_6379.JPG"
        ]
        
        if dispNo < 0 {
            dispNo = 4
        }
        
        if dispNo > 4 {
            dispNo = 0
        }
        
        let name = imageNameAllay[dispNo]
        
        let image = UIImage(named: name)
        
        imageView.image = image
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let image = UIImage(named: "IMG_6375.JPG")
        
        imageView.image = image
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bImage:bigImageController = segue.destination as! bigImageController
        bImage.bigImage = imageView.image
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue){
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

