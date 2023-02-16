//
//  AppCoordinator.swift
//  github-followers
//
//  Created by Karlis Berzins on 16/02/2023.
//

import UIKit

class AppCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []

    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let vc = SearchViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }

    func getFollowers() {
        let vc = FollowerListViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
