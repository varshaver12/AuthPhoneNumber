//
//  SceneDelegate.swift
//  AuthPhoneNumber
//
//  Created by Aleksey Khlestkin on 18.03.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        
        let rootVC = ViewController()
        window = UIWindow(windowScene: scene)
        window?.rootViewController = rootVC
        window?.makeKeyAndVisible()
    }

}

