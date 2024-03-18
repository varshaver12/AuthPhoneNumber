//
//  LoginViewModel.swift
//  AuthPhoneNumber
//
//  Created by Aleksey Khlestkin on 18.03.2024.
//

import Foundation

protocol ILoginViewModel {
    func goToAuthScreen(initialViewController: LoginViewController)
}

final class LoginViewModel {
    
}

extension LoginViewModel: ILoginViewModel {
    
    func goToAuthScreen(initialViewController: LoginViewController) {
        let authScreenViewModel = AuthScreenViewModel()
        let authScreenView = AuthScreenView(viewModel: authScreenViewModel)
        initialViewController.present(authScreenView, animated: true)
    }
    
}
