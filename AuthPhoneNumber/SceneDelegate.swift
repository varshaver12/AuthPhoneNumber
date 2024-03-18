//
//  SceneDelegate.swift
//  AuthPhoneNumber
//
//  Created by Aleksey Khlestkin on 18.03.2024.
//

import UIKit

private enum Constants {
    static let launchScreenLiveTime = 5.5 
    static let transitionAnimationDuration = 1.0
}

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        
        let rootVC = LaunchScreenViewController()
        let navigationController = UINavigationController(rootViewController: rootVC)
        window = UIWindow(windowScene: scene)
        window?.rootViewController = navigationController
        launchAppCoordinator()
        window?.makeKeyAndVisible()
    }

    // MARK: - Private Methods

    private func launchAppCoordinator() {
        DispatchQueue.main.asyncAfter(deadline: .now() + Constants.launchScreenLiveTime) {
            print("выполняется")
            UIView.animate(withDuration: Constants.transitionAnimationDuration) {
                let loginVM = LoginViewModel()
                let newRootVC = LoginViewController(viewModel: loginVM)
                
                self.window?.rootViewController = newRootVC


                UIView.transition(with: self.window!,
                                  duration: Constants.transitionAnimationDuration,
                                  options: .transitionCrossDissolve,
                                  animations: nil,
                                  completion: nil)
            }
        }
    }
}

