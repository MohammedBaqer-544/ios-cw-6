//
//  MovieDetailsVC.swift
//  Classwork6
//
//  Created by moahammed on 7/1/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

class MovieDetailsVC: UIViewController {
    
    var movieData: Movie = Movie(movieName: "Joker", movieReleaseDate: 2000, actors: [""], rating: 10.0, pgRating: "PG-13")
    
    
    
    @IBOutlet weak var movieImg: UIImageView!
    
    @IBOutlet weak var movieName: UINavigationItem!
    
    @IBOutlet weak var movieRating: UILabel!
    @IBOutlet weak var movieRated: UILabel!
    @IBOutlet weak var movieReleaeDate: UILabel!
    
    @IBOutlet weak var actorImg1: UIImageView!
    @IBOutlet weak var actorName1: UILabel!
    
    @IBOutlet weak var actorImg2: UIImageView!
    @IBOutlet weak var actorName2: UILabel!
    
    @IBOutlet weak var actorImg3: UIImageView!
    @IBOutlet weak var actorName3: UILabel!
    
    @IBOutlet weak var ratingBG: UIView!
    
    @IBOutlet weak var ratedBG: UIView!
    
    @IBOutlet weak var yearBG: UIView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        setMovieDetails()
        configureUI()
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    func setMovieDetails() {
        // MovieName
        movieName.title = movieData.movieName
        
        // Image
        self.movieImg.image = UIImage(named: movieData.movieName)
        
        // Lable
        self.movieRated.text = movieData.pgRating
        self.movieRating.text = "\(movieData.rating)"
        self.movieReleaeDate.text = "\(movieData.movieReleaseDate)"
        
        // Actors
        self.actorImg1.image = UIImage(named: movieData.actors[0])
        self.actorName1.text = movieData.actors[0]
        self.actorImg2.image = UIImage(named: movieData.actors[1])
        self.actorName2.text = movieData.actors[1]
        self.actorImg3.image = UIImage(named: movieData.actors[2])
        self.actorName3.text = movieData.actors[2]
    }
    
    
    func configureUI() {
        ratedBG.layer.cornerRadius = 20
        ratingBG.layer.cornerRadius = 20
        yearBG.layer.cornerRadius = 20
    }
    
    
}
