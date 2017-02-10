//
//  FullScreenPhotoViewViewController.swift
//  Tumblr
//
//  Created by Pan Guan on 2/9/17.
//  Copyright © 2017 Pan. All rights reserved.
//

import UIKit

class FullScreenPhotoViewController: UIViewController, UIScrollViewDelegate {

  
    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet weak var CloseButton: UIButton!
    @IBOutlet weak var photoView: UIImageView!
    
    var photo: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ScrollView.delegate = self
        photoView.image = photo
        // Do any additional setup after loading the view.
    }
    
    func viewForZooming(in ScrollView: UIScrollView) -> UIView? {
        return photoView
    }
    
    @IBAction func CloseButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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
