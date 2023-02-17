//
//  FollowerListViewController.swift
//  github-followers
//
//  Created by Karlis Berzins on 16/02/2023.
//

import UIKit

class FollowerListViewController: UIViewController {
    weak var coordinator: SearchCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemPink
    }
}
