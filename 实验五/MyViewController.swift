//
//  MyViewController.swift
//  实验五
//
//  Created by student on 2018/12/15.
//  Copyright © 2018年 baoxinbei. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {
    
    var label: UILabel!
    var btn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        let myView = MyView(frame: CGRect(x: 0, y: 20, width: self.view.frame.width, height: self.view.frame.height - 20))
        myView.drawCurve { (x) -> CGFloat in
            return x * x
        }
        self.view.addSubview(myView)
        
        
        label = UILabel(frame: CGRect(x: 160, y: 100, width: 200, height: 44))
        label.text = "Hello World"
        label.font = UIFont.systemFont(ofSize: 22)
        label.textColor = UIColor.black
        self.view.addSubview(label)
        
        
        btn = UIButton(frame: CGRect(x: 160, y: 160, width: 100, height: 37))
        btn.setTitle("Click me!", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.backgroundColor = UIColor.darkGray
        btn.setTitleColor(UIColor.black, for: .highlighted)
        self.view.addSubview(btn)
        btn.addTarget(self, action: #selector(clicked), for: .touchUpInside)
        
        
        let imageView = UIImageView(frame: CGRect(x: 10, y: 400, width: self.view.frame.width - 20, height: (self.view.frame.width - 20) * 0.618))
        let path = Bundle.main.path(forResource: "1", ofType: "png")
        let image = UIImage(contentsOfFile: path!)
        imageView.image = image
        self.view.addSubview(imageView)

    }
    

   
    @objc func clicked() {
        if label.text! == "I'm clicked." {
            label.text = "Hello World"
            btn.setTitle("Click me!", for: .normal)
        } else {
            label.text = "I'm clicked."
            btn.setTitle("hello", for: .normal)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
