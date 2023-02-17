//
//  FavoritesCoordinator.swift
//  github-followers
//
//  Created by Karlis Berzins on 17/02/2023.
//

import UIKit

class FavoritesCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []

    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let vc = FavoritesListViewController()
        vc.coordinator = self
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        navigationController.viewControllers = [vc]
    }
}
