//
//  FollowerListViewController.swift
//  github-followers
//
//  Created by Karlis Berzins on 16/02/2023.
//

import UIKit

class FollowerListViewController: UIViewController, Coordinated {
    weak var coordinator: Coordinator?

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemPink
    }
}
