//
//  MainTabBarController.swift
//  github-followers
//
//  Created by Karlis Berzins on 17/02/2023.
//

import UIKit

class MainTabBarController: UITabBarController {
    private let search = FlowCoordinator(child: SearchViewController(), tabBarItem: UITabBarItem(tabBarSystemItem: .search, tag: 0))
    private let favorites = FlowCoordinator(child: FavoritesListViewController(), tabBarItem: UITabBarItem(tabBarSystemItem: .favorites, tag: 1))

    override func viewDidLoad() {
        super.viewDidLoad()

        UITabBar.appearance().tintColor = .systemGreen

        viewControllers = [search.navigationController, favorites.navigationController]
    }
}
