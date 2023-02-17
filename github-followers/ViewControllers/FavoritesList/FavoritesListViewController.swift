//
//  FavoritesListViewController.swift
//  github-followers
//
//  Created by Karlis Berzins on 17/02/2023.
//

import UIKit

class FavoritesListViewController: UIViewController {
    weak var coordinator: FavoritesCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemPurple
    }
}
