//
//  StagingViewController.swift
//  PicChallenge
//
//  Created by Jannik Feuerhahn on 12.02.21.
//

import Feuerlib
import UIKit

///
/// UIViewController for the first screen used to setup a tournament
///
class StagingViewController: UIViewController {
    
    private lazy var btnStart: UIButton = {
        let button = UIButton()
        button.setTitle(NSLocalizedString("Start Tournament", comment: "Button"), for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.setBackgroundImage(UIColor.systemOrange.image, for: .normal)
        button.setBackgroundImage(UIColor.systemOrange.highlighted.image, for: .highlighted)
        button.addTarget(self, action: #selector(startTournamentPressed), for: .touchUpInside)
        button.clipsToBounds = true
        button.layer.cornerRadius = 14
        return button
    }()
    
    override func viewDidLoad() {
        setupConstraints()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.btnStart.setTitle(UserDefaults(suiteName: "group.picchallenge")?.stringArray(forKey: "incomingURLs")?.first ?? "nope", for: .normal)
    }
    
    func setupConstraints() {
        self.view.addSubview(btnStart)
        btnStart.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            btnStart.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            btnStart.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            btnStart.heightAnchor.constraint(equalToConstant: 45.0),
            btnStart.widthAnchor.constraint(equalToConstant: self.view.frame.width/2)
        ])
    }
    
    @objc private func startTournamentPressed() {
        print("boi")
    }
}
