//
//  FirstTransition.swift
//  Class 02
//
//  Created by Kim, YoungKyo (CONT) on 10/21/16.
//  Copyright © 2016 Kyo Kim. All rights reserved.
//

import UIKit

class FirstTransition: BaseTransition {
    var blackVeiw = UIView()
    var imageView: UIImageView!
    
    override func presentTransition(containerView: UIView, fromViewController: UIViewController, toViewController: UIViewController) {
        
        let navigationController = fromViewController as! UINavigationController
        let feedViewController = navigationController.topViewController as! FeedViewController
        
        let photoViewController = toViewController as! PhotoViewController
        
        
        feedViewController.imageView.isHidden = true
        photoViewController.imageView.isHidden = true
    
        imageView = UIImageView()
        imageView.image = feedViewController.imageView.image
        imageView.frame = feedViewController.imageView.frame
        imageView.contentMode = feedViewController.imageView.contentMode
        
        
        containerView.addSubview(imageView)
        
        blackVeiw = UIView()
        blackVeiw.frame = CGRect(x: 0, y: 0, width: toViewController.view.frame.size.width, height: toViewController.view.frame.size.height)
        
        
        
        toViewController.view.alpha = 0
        toViewController.view.transform = CGAffineTransform(scaleX: 1, y: 1)
        
       
        
       
        blackVeiw.backgroundColor = UIColor(white: 0, alpha: 0)
        fromViewController.view.addSubview(blackVeiw)
        
        
        
        UIView.animate(withDuration: duration, animations: {
            toViewController.view.alpha = 1
            toViewController.view.transform = CGAffineTransform(scaleX: 1, y: 1)
        
            

            self.imageView.frame = photoViewController.imageView.frame
            
            self.blackVeiw.backgroundColor = UIColor(white: 0, alpha: 0.8)
        
        
        }) { (finished: Bool) -> Void in
            
            feedViewController.imageView.isHidden = false
            photoViewController.imageView.isHidden = false
            self.imageView.removeFromSuperview()
            
            self.finish()
        }
    }
    
    override func dismissTransition(containerView: UIView, fromViewController: UIViewController, toViewController: UIViewController) {
        
            fromViewController.view.transform = CGAffineTransform(scaleX: 1, y: 1)


        self.blackVeiw.backgroundColor = UIColor(white: 0, alpha: 0.8)
    
        
        
        UIView.animate(withDuration: duration, animations: {
            
            
          
             self.blackVeiw.backgroundColor = UIColor(white: 0, alpha: 0)
                self.blackVeiw.frame.origin = CGPoint(x: -self.blackVeiw.frame.size.width, y: -self.blackVeiw.frame.size.height)
            
            fromViewController.view.transform = CGAffineTransform(scaleX: 1, y: 1)
            fromViewController.view.alpha = 0
           
            
            
        }) { (finished: Bool) -> Void in
            self.finish()
        }
    }
    
    
    
}
