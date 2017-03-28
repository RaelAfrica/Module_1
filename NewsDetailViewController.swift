//
//  NewsDetailViewController.swift
//  Module_2
//
//  Created by Rael Kenny on 3/27/17.
//  Copyright © 2017 Rael Kenny. All rights reserved.
//

import UIKit

class NewsDetailViewController: UIViewController {

    @IBOutlet weak var titleLabel:UILabel?
    @IBOutlet weak var webView:UIWebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView?.loadRequest(URLRequest(url: URL(string:"https://learnappmaking.com/lipsum.html")!))
        
        titleLabel?.text = self.title
    
    
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
