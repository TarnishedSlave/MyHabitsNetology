//
//  SceneDelegate.swift
//  MyHabits
//
//  Created by Максим Шагдыров on 06.05.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {


        guard let scene = (scene as? UIWindowScene) else { return }
        let window = UIWindow (windowScene: scene)

        let habitsViewController = UINavigationController(rootViewController: HabitsViewController ())

        let infoViewController = UINavigationController(rootViewController: InfoViewController ())

        let tabBarController = UITabBarController()
        tabBarController.tabBar.backgroundColor = .white
        tabBarController.viewControllers = [habitsViewController, infoViewController]

        habitsViewController.tabBarItem = UITabBarItem(title: "Привычки", image: UIImage(systemName: "rectangle.grid.1x2.fill"), tag: 0)
        infoViewController.tabBarItem = UITabBarItem(title: "Информация", image: UIImage(systemName: "info.circle.fill"), tag: 1)

        window.rootViewController = tabBarController
        window.makeKeyAndVisible()

        self.window = window

    }

    func sceneDidDisconnect(_ scene: UIScene)       {}
    func sceneDidBecomeActive(_ scene: UIScene)     {}
    func sceneWillResignActive(_ scene: UIScene)    {}
    func sceneWillEnterForeground(_ scene: UIScene) {}
    func sceneDidEnterBackground(_ scene: UIScene)  {}

}
