//
//  ViewController.swift
//  github-followers
//
//  Created by Karlis Berzins on 16/02/2023.
//

import UIKit

class SearchViewController: UIViewController {
    weak var coordinator: AppCoordinator?

    private lazy var logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "gh-logo")
        imageView.translatesAutoresizingMaskIntoConstraints = false

        return imageView
    }()

    private lazy var searchField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false

        textField.layer.cornerRadius = 10
        textField.layer.borderWidth = 2
        textField.layer.borderColor = UIColor.systemGray4.cgColor

        textField.textColor = .label
        textField.tintColor = .label
        textField.textAlignment = .center
        textField.font = UIFont.preferredFont(forTextStyle: .title2)
        textField.adjustsFontSizeToFitWidth = true
        textField.minimumFontSize = 12

        textField.backgroundColor = .tertiarySystemBackground
        textField.autocorrectionType = .no
        textField.returnKeyType = .go
        textField.clearButtonMode = .whileEditing
        textField.placeholder = "Enter a username"

        return textField
    }()

    private lazy var getFollowersButton: UIButton = {
        var configuration = UIButton.Configuration.tinted()
        configuration.cornerStyle = .medium
        configuration.baseBackgroundColor = UIColor.systemGreen
        configuration.baseForegroundColor = UIColor.systemGreen
        configuration.title = "Get Followers"
        configuration.image = UIImage(systemName: "person.3")
        configuration.imagePadding = 8
        configuration.imagePlacement = .leading

        let button = UIButton(configuration: configuration)
        button.translatesAutoresizingMaskIntoConstraints = false

        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        layoutUI()
    }

    @objc private func getFollowersTapped() {
        coordinator?.getFollowers()
    }

    private func layoutUI() {
        view.addSubview(logoImageView)
        view.addSubview(searchField)
        view.addSubview(getFollowersButton)

        getFollowersButton.addTarget(self, action: #selector(getFollowersTapped), for: .touchUpInside)

        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.widthAnchor.constraint(equalToConstant: 200),
            logoImageView.heightAnchor.constraint(equalTo: logoImageView.widthAnchor),

            searchField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 32),
            searchField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 48),
            searchField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -48),
            searchField.heightAnchor.constraint(equalToConstant: 48),

            getFollowersButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -48),
            getFollowersButton.leadingAnchor.constraint(equalTo: searchField.leadingAnchor),
            getFollowersButton.trailingAnchor.constraint(equalTo: searchField.trailingAnchor),
            getFollowersButton.heightAnchor.constraint(equalToConstant: 48),
        ])
    }
}
