//
//  ViewController.swift
//  MeMeChallenge
//
//  Created by Laura Calinoiu on 04/08/15.
//  Copyright © 2015 Apress. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate {
    
    let initialTopText = "TOP"
    let initialBottomText = "BOTTOM"
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var cameraButton: UIBarButtonItem!
    
    @IBOutlet weak var bottomTextField: UITextField!
    @IBOutlet weak var topTextField: UITextField!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        topTextField.text = initialTopText
        bottomTextField.text = initialBottomText
        topTextField.textAlignment = .Center
        bottomTextField.textAlignment = .Center
    }
    
    override func viewWillAppear(animated: Bool){
        super.viewWillAppear(animated)
        cameraButton.enabled = UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera)
        
        topTextField.delegate = self
        bottomTextField.delegate = self
    }
    
    @IBAction func pickClicked(sender: UIBarButtonItem) {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        self.presentViewController(picker, animated: true, completion: nil)
    }
    
    @IBAction func cameraClicked(sender: UIBarButtonItem) {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = UIImagePickerControllerSourceType.Camera
        self.presentViewController(picker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        self.dismissViewControllerAnimated(true, completion: nil)
        imageView.image = image
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        if textField == topTextField && textField.text == initialTopText{
            textField.text = ""
        }
        else if textField == bottomTextField && textField.text == initialBottomText{
            textField.text = ""
        }
        
        return true
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

