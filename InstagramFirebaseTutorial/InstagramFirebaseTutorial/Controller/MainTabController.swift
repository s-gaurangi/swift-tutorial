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
        configureTabBar()
    }
    
    //MARK: - Helpers
    
    func configureViewControllers() {
        view.backgroundColor = .white
        let feed = templateNavigationController(unselectedImage: #imageLiteral(resourceName: "home_unselected"), selectedImage: #imageLiteral(resourceName: "home_selected"), rootView: FeedController())
        let search = templateNavigationController(unselectedImage: #imageLiteral(resourceName: "search_unselected"), selectedImage: #imageLiteral(resourceName: "search_selected"), rootView: SearchController())
        let selection = templateNavigationController(unselectedImage: #imageLiteral(resourceName: "plus_unselected"), selectedImage: #imageLiteral(resourceName: "plus_unselected"), rootView: ImageSelectController())
        let notifs = templateNavigationController(unselectedImage: #imageLiteral(resourceName: "like_unselected"), selectedImage: #imageLiteral(resourceName: "like_selected"), rootView: NotificationsController())
        let profile = templateNavigationController(unselectedImage: #imageLiteral(resourceName: "profile_unselected"), selectedImage: #imageLiteral(resourceName: "profile_selected"), rootView: ProfileController())
        
        viewControllers = [feed, search, selection, notifs, profile]
        //tabBar.backgroundColor = .white
    }
    
    func templateNavigationController(unselectedImage: UIImage, selectedImage: UIImage, rootView: UIViewController) -> UINavigationController {
        
        let nav = UINavigationController(rootViewController: rootView)
        nav.tabBarItem.image = unselectedImage
        nav.tabBarItem.selectedImage = selectedImage
        nav.navigationBar.tintColor = .black
        
        let standard_appearance = UINavigationBarAppearance()
        standard_appearance.configureWithOpaqueBackground()
        nav.navigationBar.standardAppearance = standard_appearance
        nav.navigationBar.scrollEdgeAppearance = standard_appearance
        
        return nav
    }
    
    func configureTabBar() {

        let appearance = UITabBarAppearance()
        
        appearance.configureWithOpaqueBackground()
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
        
        
    }
}
