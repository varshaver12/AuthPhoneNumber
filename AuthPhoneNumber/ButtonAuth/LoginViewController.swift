//
//  LoginViewController.swift
//  AuthPhoneNumber
//
//  Created by Aleksey Khlestkin on 18.03.2024.
//

import SnapKit

final class LoginViewController: UIViewController {
    
    private lazy var goToAuthScreenButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .blue
        button.layer.cornerRadius = LocalConstants.buttonCornerRadius
        button.setTitle(LocalConstants.buttonContent, for: .normal)
        button.titleLabel?.font = UIFont(name: LocalConstants.textFont, size: LocalConstants.textSize)
        button.tintColor = .white
        button.addTarget(self, action: #selector(authButtonTapped), for: .touchUpInside)
        return button
    }()
    
    var viewModel: ILoginViewModel
    
    init(viewModel: ILoginViewModel) {
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

private extension LoginViewController {
    
    @objc func authButtonTapped() {
        viewModel.goToAuthScreen(initialViewController: self)
    }
    
    func setupConfigurate() {
        goToAuthScreenButton.layer.cornerRadius = LocalConstants.buttonCornerRadius
    }
    
    func setupView() {
        view.addSubview(goToAuthScreenButton)
    }
    
    func setupConstraints() {
        goToAuthScreenButton.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview()
            $0.leading.trailing.equalToSuperview().inset(LocalConstants.leadingNtrailing)
            $0.height.equalTo(LocalConstants.buttonHeight)
        }
    }
}

private extension LoginViewController {
    enum LocalConstants {
        static let textSize: CGFloat = 18
        static let buttonCornerRadius: CGFloat = 10
        static let leadingNtrailing: CGFloat = 25
        static let buttonHeight: CGFloat = 30
        static let buttonContent: String = "Авторизоваться"
        static let textFont: String = "Apple SD Gothic Neo UltraLight"
    }
}
