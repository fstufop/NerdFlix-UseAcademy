//
//  HomeViewModel.swift
//  NerdFlix
//
//  Created by BootCamp on 25/09/21.
//

import Foundation
import Alamofire

class HomeViewModel{
    
    func getPopularMovies(){
        AF.request("https://imdb-api.com/en/API/MostPopularMovies/k_3g4a43n5", method: .get).responseJSON { (response) in
            debugPrint("==> Response:", response)
            guard let data = response.data else {return}
            
            do{
                
            }catch (let error){
                
            }
        }
    }

}
