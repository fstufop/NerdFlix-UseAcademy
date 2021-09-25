//
//  MoviesCollectionViewCell.swift
//  NerdFlix
//
//  Created by BootCamp on 25/09/21.
//

import UIKit

class MoviesCollectionViewCell: UICollectionViewCell {

    //MARK: - Properties
    static let reuseidentifier = "MoviesCollectionViewCell"
    //MARK: - Outlets
    @IBOutlet weak var imageMovie: UIImageView!
    @IBOutlet weak var labelMovieTitle: UILabel!
    
    //MARK: - Actions
    
    //MARK: - Overrides
    override func awakeFromNib() {
        super.awakeFromNib()
    //MARK: - Methods
      
    //MARK: - Extensions
  
    }
    public func configureCollectionView(with model: tableModel){
         self.labelMovieTitle.text = model.movieTitle
         self.imageMovie.image = UIImage(named: model.imageMovieName)
     }
}
