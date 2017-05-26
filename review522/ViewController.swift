//
//  ViewController.swift
//  review522
//
//  Created by 浅野未央 on 2017/05/21.
//  Copyright © 2017年 mio. All rights reserved.
//

import UIKit
import AVKit



class ViewController: UIViewController {
  

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
   

   
    start.layer.borderColor = UIColor.red.cgColor
    start.layer.borderWidth = 10
    start.layer.cornerRadius = 30
    start.layer.masksToBounds = true
    
    
    UIView.animate(withDuration: 1.0, delay: 0.0, options: .repeat, animations: {
      self.usa.center.y += 100.0
    }, completion: nil)
    
    usa2.alpha = 0.0
    UIView.animate(withDuration: 2.0, delay: 1.0, options: [.repeat], animations: {
      self.usa2.alpha = 1.0
    }, completion: nil)
    
 
    UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.0, options: .repeat, animations: {
      self.usa3.center.y += 100.0
      self.usa3.bounds.size.height += 30.0
      self.usa3.bounds.size.width += 30.0
    }) { _ in
      self.usa3.center.y -= 100.0
      self.usa3.bounds.size.height -= 30.0
      self.usa3.bounds.size.width -= 30.0
    }
   
  UIView.transition(with: usa4, duration: 1.0, options: [.transitionFlipFromLeft], animations: nil, completion: nil)
   // ↑なんか効かない
  }


  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func start(_ sender: Any) {
    }
  @IBOutlet weak var start: UIButton!
 
  @IBOutlet weak var usa: UIImageView!
  
  @IBOutlet weak var usa2: UIImageView!
  
  @IBOutlet weak var usa3: UIImageView!
 
  @IBOutlet weak var usa4: UIImageView!
  }




