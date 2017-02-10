//
//  PhotoDetailViewController.swift
//  Tumblr
//
//  Created by Pan Guan on 2/8/17.
//  Copyright © 2017 Pan. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {

    @IBOutlet weak var postImageView: UIImageView!
   
    var post: NSDictionary?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let photos = (post?.value(forKey: "photos") as? NSArray)?[0] as? NSDictionary
        let photo = photos?.value(forKey: "original_size") as? NSDictionary
        let imageUrl = NSURL(string: photo?["url"] as! String) as! URL
        
        postImageView.setImageWith(imageUrl)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func zoonPhoto(_ sender: Any) {
        performSegue(withIdentifier: "zoomPhoto", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationViewController = segue.destination as! FullScreenPhotoViewController
        destinationViewController.photo = self.postImageView.image!
    }

    
    // MARK: - Navigation
/*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationViewController = segue.destination as! FullScreenPhotoViewController
        destinationViewController.photo = self.postImageView.image
        
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
*/
}
