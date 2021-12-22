//
//  FeedController.swift
//  InstagramFirebaseTutorial
//
//  Created by Gaurangi Siriya on 2021-12-12.
//

import UIKit

private let reuseIdentifier = "Cell"

class FeedController: UICollectionViewController {
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    //MARK: - Helpers
    
    func configureUI() {
        collectionView.backgroundColor = .white
        collectionView.register(FeedCell.self,forCellWithReuseIdentifier: reuseIdentifier) //register a cell with the same reuse identifier that is passed through the data source
    }
}
//MARK: - UICollectionViewDataSource

//data source for collection view (how the cells will interact with the screen)
extension FeedController {
    //how many cells to create
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    //how to create each cell
    //reuse identifier is like memory management - dequeue the cell that has gone off the screen
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! FeedCell //create boilerplate cell to be type FeedCell (custom)
        return cell
    }
}

extension FeedController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = view.frame.width
        //adding 8 pixels + 40 for the size of the profile image view
        var height = width + 8 + 40
        //50 comes from the imageview and 60 comes from everything else
        height += 110
        return CGSize(width: width, height:height)
    }
}
