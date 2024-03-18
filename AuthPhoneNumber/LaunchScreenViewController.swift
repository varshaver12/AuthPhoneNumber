//
//  LaunchScreenViewController.swift
//  AuthPhoneNumber
//
//  Created by Aleksey Khlestkin on 18.03.2024.
//

import UIKit

final class LaunchScreenViewController: UIViewController {

    private let circleView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = Constants.circleSize / 2
        view.clipsToBounds = true
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        startCircleAnimation()
    }

    private func setupView() {
        view.backgroundColor = .black
        view.addSubview(circleView)
        circleView.frame.size = CGSize(width: Constants.circleSize,
                                       height: Constants.circleSize)
        circleView.center = CGPoint(x: view.bounds.midX,
                                    y: -Constants.circleSize)
    }

    private func startCircleAnimation() {

        UIView.animate(withDuration: Constants.firstAnimateDuration,
                       delay: Constants.startAnimateDelay,
                       usingSpringWithDamping: Constants.animateDamping,
                       initialSpringVelocity: .zero) {
            self.circleView.center = CGPoint(x: self.view.bounds.midX,
                                             y: self.view.bounds.midY)
        }

        UIView.animate(withDuration: Constants.middleAnimateDuration,
                       delay: Constants.firstAnimateDelay,
                       usingSpringWithDamping: Constants.animateDamping,
                       initialSpringVelocity: .zero) {
            self.circleView.transform = CGAffineTransform(scaleX: Constants.firstScale,
                                                          y: Constants.firstScale)
        }

        UIView.animate(withDuration: Constants.middleAnimateDuration,
                       delay: Constants.middleAnimateDelay,
                       usingSpringWithDamping: Constants.animateDamping,
                       initialSpringVelocity: .zero) {
            self.circleView.transform = CGAffineTransform(scaleX: Constants.middleScale,
                                                          y: Constants.middleScale)
        }

        UIView.animate(withDuration: Constants.lastAnimateDuration,
                       delay: Constants.lastAnimateDelay) {
            self.circleView.transform = CGAffineTransform(scaleX: Constants.lastScale,
                                                          y: Constants.lastScale)
        }

    }

}

private enum Constants {
    static let circleSize: CGFloat = 40
    static let firstAnimateDuration = 1.0
    static let middleAnimateDuration = 0.8
    static let lastAnimateDuration = 0.15
    static let startAnimateDelay = 0.3
    static let firstAnimateDelay = startAnimateDelay + 1.2
    static let middleAnimateDelay = firstAnimateDelay + 1
    static let lastAnimateDelay = middleAnimateDelay + 1
    static let firstScale = 150 / circleSize
    static let middleScale = 254 / circleSize
    static let lastScale = 1_134 / circleSize
    static let animateDamping = 0.2
}
