//
//  bigImageController.swift
//  SlideshowApp
//
//  Created by 佐藤　由羽太 on 2019/09/04.
//  Copyright © 2019 jose_asia. All rights reserved.
//

import UIKit

class bigImageController: UIViewController {
    
    @IBOutlet weak var bigImageView: UIImageView!
    var bigImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bigImageView.image = bigImage
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
