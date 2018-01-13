//
//  ViewController.swift
//  jetRubyDribbbleApp
//
//  Created by Novikov on 12.01.18.
//  Copyright © 2018 Novikov. All rights reserved.
//

import UIKit
import Alamofire
import SDWebImage
import MBProgressHUD

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }
    @IBAction func loginButton(_ sender: Any) {
        let url = URL(string: "https://api.dribbble.com/v1/user?access_token=5e7d0636d454c2265767c39077d60b0304f4940103e19ea96b7f387cc903e8c0")
        let result = Alamofire.request(url!, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil).responseJSON { (response) in
            print(response.result.value)
        }
        
        
    }
}
