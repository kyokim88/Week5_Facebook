//
//  FeedViewController.swift
//  Class 02
//
//  Created by Kim, YoungKyo (CONT) on 10/20/16.
//  Copyright © 2016 Kyo Kim. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var scrollView: UIScrollView!

    
    internal var fadeTransition: FadeTransition!
    
    internal var firstTransition: FirstTransition!
//    let tabViewController = fromViewController as! UITabBarController
//    let navigationController = tabViewController.selectedViewController as! UINavigationController
//    let feedViewController = navigationController.topViewController as! FeedViewController
//    let toViewController = toViewController as! PhotoViewController
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        scrollView.contentSize = CGSize(width: 375, height: 1700)
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressPhoto(_ sender: UITapGestureRecognizer) {
        
        performSegue(withIdentifier: "toPhotoViewController", sender: nil)
        
    }

 
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let photoViewController = segue.destination as! PhotoViewController
        photoViewController.image = self.imageView.image
        
        
    

        // Create a new instance of your fadeTransition.
        fadeTransition = FadeTransition()
        
        // Tell the destinationViewController's  transitioning delegate to look in fadeTransition for transition instructions.
        photoViewController.transitioningDelegate = fadeTransition
        
        // Adjust the transition duration. (seconds)
//        fadeTransition.duration = 0.8
        
        firstTransition = FirstTransition()
        firstTransition.duration = 1
        
        photoViewController.transitioningDelegate = firstTransition
       
        
        
    }
   

}
