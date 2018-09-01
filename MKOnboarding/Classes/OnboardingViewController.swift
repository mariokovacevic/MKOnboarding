//
//  MKOnboardingViewController.swift
//  
//
//  Created by Mario Kovacevic on 01/09/2018.
//  Copyright © 2018 Mario Kovacevic. All rights reserved.
//

import UIKit

class MKOnboardingViewController: UIViewController {
    
    // MARK: - UIControls
    let backgroundImageView: UIImageView = {
        let imageView = UIImageView(frame: UIScreen.main.bounds)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let productTextView: UITextView = {
        let textView = UITextView()
        let attributedText = NSMutableAttributedString(string: "Gmail", attributes: [
            NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 22),
            NSAttributedStringKey.foregroundColor: UIColor.white])
        textView.attributedText = attributedText
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.backgroundColor = .clear
        return textView
    }()
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        let attributedText = NSAttributedString(string: "Email by Google.", attributes: [
            NSAttributedStringKey.font: UIFont.systemFont(ofSize: 16),
            NSAttributedStringKey.foregroundColor: UIColor.white])
        textView.attributedText = attributedText
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.backgroundColor = .clear
        return textView
    }()
    
    // MARK: - Init
    init(onboardingItem: MKOnboardingItem) {
        super.init(nibName: nil, bundle: nil)
        
        self.setupLayout()
        
        self.backgroundImageView.image  = UIImage(named: onboardingItem.imageName)
        self.productTextView.text       = onboardingItem.title
        self.descriptionTextView.text   = onboardingItem.description
    }
    
    func setupLayout() {
        
        let topImageContainerView = UIView()
        topImageContainerView.backgroundColor = .clear
        self.view.addSubview(topImageContainerView)
        self.view.addSubview(self.productTextView)
        self.view.addSubview(self.descriptionTextView)
        
        // enable auto layout
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        topImageContainerView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        topImageContainerView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        topImageContainerView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.6).isActive = true
        topImageContainerView.addSubview(self.backgroundImageView)
        
        self.backgroundImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.backgroundImageView.heightAnchor.constraint(equalTo: self.view.heightAnchor).isActive = true
        self.backgroundImageView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true

        self.productTextView.topAnchor.constraint(equalTo: topImageContainerView.bottomAnchor, constant: 5).isActive = true
        self.productTextView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 24).isActive = true
        self.productTextView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -24).isActive = true
        
        self.descriptionTextView.topAnchor.constraint(equalTo: self.productTextView.bottomAnchor, constant: 0).isActive = true
        self.descriptionTextView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 24).isActive = true
        self.descriptionTextView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -24).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
