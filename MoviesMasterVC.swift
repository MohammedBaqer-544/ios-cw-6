//
//  MoviesMasterVC.swift
//  Classwork6
//
//  Created by moahammed on 7/1/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit


var selectedMovie: Movie = Movie(movieName: "", movieReleaseDate: 2000, actors: [""], rating: 0.0, pgRating: "PG")



class MoviesMasterVC: UIViewController {

    var marvelImages = MarvelMovieData
    var dcImages = DCMovieData
    
    @IBOutlet weak var marvelImg0: UIButton!
    @IBOutlet weak var marvelImg1: UIButton!
    @IBOutlet weak var marvelImg2: UIButton!
    @IBOutlet weak var marvelImg3: UIButton!
    @IBOutlet weak var marvelImg4: UIButton!
    @IBOutlet weak var marvelImg5: UIButton!
    
    @IBOutlet weak var dcImg0: UIButton!
    @IBOutlet weak var dcImg1: UIButton!
    @IBOutlet weak var dcImg2: UIButton!
    @IBOutlet weak var dcImg3: UIButton!
    @IBOutlet weak var dcImg4: UIButton!
    @IBOutlet weak var dcImg5: UIButton!
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setMarvelImages()
        setDCImages()
        
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func setMarvelImages() {
        marvelImg0.setBackgroundImage(UIImage(named: marvelImages[0].movieName), for: .normal)
        marvelImg1.setBackgroundImage(UIImage(named: marvelImages[1].movieName), for: .normal)
        marvelImg2.setBackgroundImage(UIImage(named: marvelImages[2].movieName), for: .normal)
        marvelImg3.setBackgroundImage(UIImage(named: marvelImages[3].movieName), for: .normal)
        marvelImg4.setBackgroundImage(UIImage(named: marvelImages[4].movieName), for: .normal)
        marvelImg5.setBackgroundImage(UIImage(named: marvelImages[5].movieName), for: .normal)

    }

    func setDCImages() {
          dcImg0.setBackgroundImage(UIImage(named: dcImages[0].movieName), for: .normal)
          dcImg1.setBackgroundImage(UIImage(named: dcImages[1].movieName), for: .normal)
          dcImg2.setBackgroundImage(UIImage(named: dcImages[2].movieName), for: .normal)
          dcImg3.setBackgroundImage(UIImage(named: dcImages[3].movieName), for: .normal)
          dcImg4.setBackgroundImage(UIImage(named: dcImages[4].movieName), for: .normal)
          dcImg5.setBackgroundImage(UIImage(named: dcImages[5].movieName), for: .normal)

       }
    
    
    
    @IBAction func marvelBtns(_ sender: UIButton) {
        
        print("Marvel", sender.tag)
        selectedMovie = MarvelMovieData[sender.tag]
        performSegue(withIdentifier: "goToMovieDetail", sender: nil)
    }
    
    
    @IBAction func DCBtns(_ sender: UIButton) {
        
        print("DC", sender.tag)
        selectedMovie = DCMovieData[sender.tag]
        performSegue(withIdentifier: "goToMovieDetail", sender: nil)

    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let movieController = segue.destination as? MovieDetailsVC else {
            fatalError()
        }
        
        movieController.movieData = selectedMovie
    }

    
}
