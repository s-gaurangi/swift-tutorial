//
//  MainTabController.swift
//  InstagramFirebaseTutorial
//
//  Created by Gaurangi Siriya on 2021-12-12.
//

import UIKit

class MainTabController: UITabBarController {
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewControllers()
    }
    
    //MARK: - Helpers
    
    func configureViewControllers() {
        view.backgroundColor = .white
        let feed = FeedController()
        
        let search = SearchController()
        
        let selection = ImageSelectController()
        
        let notifs = NotificationsController()
        
        let profile = ProfileController()
        
        viewControllers = [feed, search, selection, notifs, profile]
    }
}
