//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Kyenret Yakubu Ayuba on 10/24/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    var post: Post!
    
    
    @IBOutlet weak var blogPostImageView: UIImageView!
    @IBOutlet weak var captionTextView: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Remove HTML tags from the caption string
        let cleanCaption = post.caption.trimHTMLTags()
                
        // Display the cleaned caption in the text view
        captionTextView.text = "\(cleanCaption ?? "")"
        
        // Unwrap the optional vote average
        //let postCaption = post.caption
        //captionTextView.text = "\(postCaption)" (this was my first attemt at unrapping and displaying the caption)
        
        
        

        //MARK: - Configure the image views
        if let photo = post.photos.first {
            let url = photo.originalSize.url
            Nuke.loadImage(with: url, into: blogPostImageView)
        }
        
        
    }
        


        
        
        // Remove HTM tags from the caption string
        //post.caption.trimHTMLTags()
        
        //Configure the labels
        //captionTextView.text = post.caption
        

        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


