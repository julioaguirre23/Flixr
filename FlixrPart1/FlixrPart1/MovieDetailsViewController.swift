//
//  MovieDetailsViewController.swift
//  FlixrPart1
//
//  Created by Chato on 2/9/21.
//

import UIKit

class MovieDetailsViewController: UIViewController {
    
    
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    var movie: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        
        let baseURL = "https://image.tmdb.org/t/p/w300"
        let posterPath = movie["poster_path"] as! String
        let posterURl = URL(string:baseURL + posterPath)
        let data = try! Data(contentsOf: posterURl!)
        
        posterView.image = UIImage(data: data)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropURl = URL(string:"https://image.tmdb.org/t/p/w780" + backdropPath)
        let backdropdata = try! Data(contentsOf: backdropURl!)
        
        backdropView.image = UIImage(data: backdropdata)

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
