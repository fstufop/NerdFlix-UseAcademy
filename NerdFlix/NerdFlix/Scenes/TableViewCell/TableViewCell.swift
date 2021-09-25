//
//  TableViewCell.swift
//  NerdFlix
//
//  Created by BootCamp on 24/09/21.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    //MARK: - Properties
    static let reuseIdentifier: String = "TableViewCell"
    var models = [tableModel]()
    func configure(with models: [tableModel]){
        self.models = models
        collectionView.reloadData()
    }
    //MARK: - Outlets
    @IBOutlet var collectionView: UICollectionView!
    //MARK: - Actions
    
    //MARK: - Overrides
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.register(UINib.init(nibName: "MoviesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: MoviesCollectionViewCell.reuseidentifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: (Int(UIScreen.main.bounds.width)/2)-20 , height: 300)
        collectionView.setCollectionViewLayout(layout, animated: true)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    //MARK: - Methods
    }
    
}
    //MARK: - Extensions
extension TableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return models.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MoviesCollectionViewCell.reuseidentifier, for: indexPath) as? MoviesCollectionViewCell else {
        return UICollectionViewCell.init(frame: .zero)
    }
        cell.configureCollectionView(with: models[indexPath.row])
        return cell
    }
}

extension TableViewCell: UICollectionViewDelegate {
    
}
//extension TableViewCell: UICollectionViewFlowLayout {
//
//}
