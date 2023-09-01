//
//  ViewController.swift
//  Nnt- Go Coffe
//
//  Created by Narely Lima on 24/08/22.
//

import UIKit

class MyTabController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarController()
    }

        private func setupTabBarController() {
            let coffeeView = UINavigationController(rootViewController: CoffeeView())
            let favoriteView = UINavigationController(rootViewController: FavoriteView())
            self.setViewControllers([coffeeView, favoriteView], animated: true)

            self.tabBar.backgroundColor = .lightGray
            self.tabBar.tintColor = .black

            guard let items = tabBar.items else {return}
            items[0].image = UIImage(named: "coffee")
            items[0].title = "Coffee"
            items[1].image = UIImage(systemName: "star")
            items[1].title = "Favoritos"
        }
}

