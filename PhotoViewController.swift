//
//  PhotoViewController.swift
//  Class 02
//
//  Created by Kim, YoungKyo (CONT) on 10/20/16.
//  Copyright © 2016 Kyo Kim. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController, UIScrollViewDelegate {

    
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
  
        var image: UIImage!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        scrollView.delegate = self
        imageView.image = image

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
    @IBAction func didPressDone(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }

}
