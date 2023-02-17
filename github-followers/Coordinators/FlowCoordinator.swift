//
//  AppCoordinator.swift
//  github-followers
//
//  Created by Karlis Berzins on 17/02/2023.
//

import UIKit

class FlowCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController

    init(navigationController: UINavigationController = UINavigationController(), child: Coordinated, tabBarItem: UITabBarItem) {
        self.navigationController = navigationController
        child.coordinator = self
        child.tabBarItem = tabBarItem
        navigationController.viewControllers = [child]
    }

    func getFollowers() {
        let vc = FollowerListViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
