//
//  PickerViewInterceptionEventsViewController.swift
//  testProgramming
//
//  Created by Chiang Siek Siang on 2015/5/11.
//  Copyright (c) 2015年 Chiang Siek Siang. All rights reserved.
//

import UIKit

class PickerViewInterceptionEventsViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet var pickerView: UIPickerView!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let gestureView: UIView = UIView()
//        gestureView.userInteractionEnabled = true
//        gestureView.setTranslatesAutoresizingMaskIntoConstraints(false)
//        gestureView.backgroundColor = UIColor.yellowColor()
//        gestureView.alpha = 0.2
//        self.view.addSubview(gestureView)
//        
//        self.view.addConstraint(NSLayoutConstraint(item: gestureView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: pickerView, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0))
//        self.view.addConstraint(NSLayoutConstraint(item: gestureView, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: pickerView, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0))
//        self.view.addConstraint(NSLayoutConstraint(item: gestureView, attribute: NSLayoutAttribute.Leading, relatedBy: NSLayoutRelation.Equal, toItem: pickerView, attribute: NSLayoutAttribute.Leading, multiplier: 1.0, constant: 0.0))
//        self.view.addConstraint(NSLayoutConstraint(item: gestureView, attribute: NSLayoutAttribute.Trailing, relatedBy: NSLayoutRelation.Equal, toItem: pickerView, attribute: NSLayoutAttribute.Trailing, multiplier: 1.0, constant: 0.0))
//        
//        let tapGesture: UITapGestureRecognizer? = UITapGestureRecognizer(target: self, action: "tapAction:")
//        tapGesture!.cancelsTouchesInView = false
//        gestureView.addGestureRecognizer(tapGesture!)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView!) -> UIView {
        let pickerCell: UIView = UIView()
        pickerCell.backgroundColor = UIColor.blackColor()
        return pickerCell
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func tapAction(tapGesture: UITapGestureRecognizer) {
        println("tap: \(tapGesture.locationInView(self.pickerView))")
    }
}
