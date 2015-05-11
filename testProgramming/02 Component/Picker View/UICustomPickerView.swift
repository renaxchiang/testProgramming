//
//  UICustomPickerView.swift
//  testProgramming
//
//  Created by Chiang Siek Siang on 2015/5/11.
//  Copyright (c) 2015年 Chiang Siek Siang. All rights reserved.
//

import UIKit

class UICustomPickerView: UIPickerView, UIGestureRecognizerDelegate {
    let gestureView: UIView = UIView()
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        gestureView.userInteractionEnabled = true
        gestureView.setTranslatesAutoresizingMaskIntoConstraints(false)
        gestureView.backgroundColor = UIColor.greenColor()
        gestureView.alpha = 0.2
        self.addSubview(gestureView)
        
        self.addConstraint(NSLayoutConstraint(item: gestureView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: self, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0))
        self.addConstraint(NSLayoutConstraint(item: gestureView, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: self, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0))
        self.addConstraint(NSLayoutConstraint(item: gestureView, attribute: NSLayoutAttribute.Leading, relatedBy: NSLayoutRelation.Equal, toItem: self, attribute: NSLayoutAttribute.Leading, multiplier: 1.0, constant: 0.0))
        self.addConstraint(NSLayoutConstraint(item: gestureView, attribute: NSLayoutAttribute.Trailing, relatedBy: NSLayoutRelation.Equal, toItem: self, attribute: NSLayoutAttribute.Trailing, multiplier: 1.0, constant: 0.0))
        
        let tapGesture: UITapGestureRecognizer? = UITapGestureRecognizer(target: self, action: "tapAction:")
        tapGesture!.cancelsTouchesInView = false
        tapGesture?.delegate = self
        gestureView.addGestureRecognizer(tapGesture!)
    }
    
    override func addSubview(view: UIView) {
        super.addSubview(view)
        
        super.bringSubviewToFront(gestureView)
    }
    
    override func insertSubview(view: UIView, aboveSubview siblingSubview: UIView) {
        super.insertSubview(view, aboveSubview: siblingSubview)
        
        super.bringSubviewToFront(gestureView)
    }
    
    override func insertSubview(view: UIView, atIndex index: Int) {
        super.insertSubview(view, atIndex: index)
        
        super.bringSubviewToFront(gestureView)
    }
    
    override func insertSubview(view: UIView, belowSubview siblingSubview: UIView) {
        super.insertSubview(view, belowSubview: siblingSubview)
        
        super.bringSubviewToFront(gestureView)
    }
    
    override func bringSubviewToFront(view: UIView) {
        super.bringSubviewToFront(view)
        
        super.bringSubviewToFront(gestureView)
    }
    
    override func sendSubviewToBack(view: UIView) {
        super.sendSubviewToBack(view)
        
        super.bringSubviewToFront(gestureView)
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldReceiveTouch touch: UITouch) -> Bool {
        println("should Receive touch")
        return true
    }
    
    func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRequireFailureOfGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        println("shouldRequireFailureOfGestureRecognizer")
        return true
    }
    
    func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWithGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        println("shouldRecognizeSimultaneouslyWithGestureRecognizer")
        return true
    }
    
    func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailByGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        println("shouldBeRequiredToFailByGestureRecognizer")
        return true
    }
    
    override func gestureRecognizerShouldBegin(gestureRecognizer: UIGestureRecognizer) -> Bool {
        println("begin")
        return true
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        println("UICustomPickerView: touchesBegan")
    }
    
    override func touchesCancelled(touches: Set<NSObject>!, withEvent event: UIEvent!) {
        println("UICustomPickerView: touchesCancelled")
    }
    
    override func touchesEnded(touches: Set<NSObject>, withEvent event: UIEvent) {
        println("UICustomPickerView: touchesEnded")
    }
    
    override func touchesMoved(touches: Set<NSObject>, withEvent event: UIEvent) {
        println("UICustomPickerView: touchesMoved")
    }
    
    func tapAction(tapGesture: UITapGestureRecognizer) {
        println("tap: \(tapGesture.locationInView(self))")
    }
}
