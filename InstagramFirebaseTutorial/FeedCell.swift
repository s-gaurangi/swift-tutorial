//
//  FeedCell.swift
//  InstagramFirebaseTutorial
//
//  Created by Siriya, Gaurangi on 2021-12-14.
//

import UIKit

class FeedCell: UICollectionViewCell {
    
    //MARK: - Properties
    
    //MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemMint //custom cells
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
