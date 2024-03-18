//
//  AuthScreenView.swift
//  AuthPhoneNumber
//
//  Created by Aleksey Khlestkin on 18.03.2024.
//

import SnapKit

final class AuthScreenView: UIViewController {
    
    var viewModel: IAuthScreenViewModel
    
    init(viewModel: IAuthScreenViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupConfigurate()
        setupConstraints()
    }
}

private extension AuthScreenView {
    
    func setupConfigurate() {
        
    }
    
    func setupView() {
        
    }
    
    func setupConstraints() {
        
    }
}

private extension AuthScreenView {
    enum LocalConstants {
        
    }
}
