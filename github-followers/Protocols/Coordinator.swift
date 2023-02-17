//
//  Coordinator.swift
//  github-followers
//
//  Created by Karlis Berzins on 16/02/2023.
//

import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func getFollowers()
}
