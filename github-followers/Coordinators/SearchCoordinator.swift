//
//  AppCoordinator.swift
//  github-followers
//
//  Created by Karlis Berzins on 16/02/2023.
//

import UIKit

class SearchCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []

    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let vc = SearchViewController()
        vc.coordinator = self
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        navigationController.viewControllers = [vc]
    }

    func getFollowers() {
        let vc = FollowerListViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
