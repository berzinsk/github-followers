//
//  MainTabBarController.swift
//  github-followers
//
//  Created by Karlis Berzins on 17/02/2023.
//

import UIKit

class MainTabBarController: UITabBarController {
    private let search = SearchCoordinator(navigationController: UINavigationController())
    private let favorites = FavoritesCoordinator(navigationController: UINavigationController())

    override func viewDidLoad() {
        super.viewDidLoad()

        UITabBar.appearance().tintColor = .systemGreen

        search.start()
        favorites.start()

        viewControllers = [search.navigationController, favorites.navigationController]
    }
}
