//
//  TableViewModel.swift
//  NerdFlix
//
//  Created by BootCamp on 25/09/21.
//

import Foundation


struct tableModel {
    let movieTitle: String
    let imageMovieName: String
    
    init(movieTitle: String, imageMovieName: String) {
        self.movieTitle = movieTitle
        self.imageMovieName = imageMovieName
    }
}
