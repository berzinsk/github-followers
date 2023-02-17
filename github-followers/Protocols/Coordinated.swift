//
//  Coordinated.swift
//  github-followers
//
//  Created by Karlis Berzins on 17/02/2023.
//

import UIKit

protocol Coordinated: UIViewController {
    var coordinator: Coordinator? { get set }
}
