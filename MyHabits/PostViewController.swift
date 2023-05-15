//
//  PostViewController.swift
//  MyHabits
//
//  Created by Максим Шагдыров on 07.05.2023.
//

import UIKit

class PostViewController: UIViewController {
    var titlePost: String = "Some Title"
    let nextButton = UIButton()
    let infoViewController = InfoViewController()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .lightGray
        self.navigationItem.title = titlePost

        let barButton = UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: #selector(nextScreen)
        )

        navigationItem.rightBarButtonItem = barButton
    }

    @objc private func nextScreen() {
        if let info = infoViewController.sheetPresentationController {
            info.detents = [.large()]
        }
        present(infoViewController, animated: true)
    }
}
