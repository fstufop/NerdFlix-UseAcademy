//
//  HomeViewController.swift
//  NerdFlix
//
//  Created by BootCamp on 24/09/21.
//

import UIKit
import AVFoundation


class HomeViewController: UIViewController {
    private var viewModel: HomeViewModel = HomeViewModel()
    
    
    //MARK: - Properties
    var player = AVAudioPlayer()
    var models = [tableModel]()
    //MARK: - Outlets
    @IBOutlet weak var tableViewMovies: UITableView!
    //MARK: - Actions
    
    //MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        tudumPlayer()
        player.play()
        setupNavigation()
        viewModel.getPopularMovies()
        tableViewMovies.dataSource = self
        tableViewMovies.delegate = self
        tableViewMovies.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: TableViewCell.reuseIdentifier)
        title = "Lista"
        
    }
    //MARK: - Methods
    func tudumPlayer(){
        do{
            let path = Bundle.main.path(forResource: "Netflix", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: path!))
        }
        catch{
            print(error)
        }
    }
    
        func setupNavigation(){
            navigationController?.navigationBar.barTintColor = .darkGray
            navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
            }
      
}
//MARK: - Extensions
extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseIdentifier, for: indexPath) as? TableViewCell else {
            return UITableViewCell.init(frame: .zero)
        }
        cell.configure(with: models)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
}

extension HomeViewController: UITableViewDelegate {

}
