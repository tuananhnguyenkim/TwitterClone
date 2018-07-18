//
//  NavigationBar.swift
//  Twitter Demo
//
//  Created by Jin Std on 14/07/2018.
//  Copyright © 2018 Jin Std. All rights reserved.
//

import UIKit

extension HomeDatasourceController {
    
    func setupNavigationBarItems(){
        // Navigation Bar Items setup
        
        setupMainButtonBar()
        setupLeftButtonBar()
        setupRightButtonBar()
        
    }
    
    private func setupMainButtonBar(){
        
        let titleImageView =  UIImageView(image: #imageLiteral(resourceName: "follow"))
        titleImageView.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        titleImageView.contentMode = .scaleAspectFit
        navigationItem.titleView = titleImageView
        
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
        
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        
        let navBarSeparatorView = UIView()
        navBarSeparatorView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        view.addSubview(navBarSeparatorView)
        navBarSeparatorView.anchor(view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0.5)
    }
    
    private func setupLeftButtonBar(){
        
        let followButton = UIButton(type: .system)
        followButton.setImage(#imageLiteral(resourceName: "twitterfollow").withRenderingMode(.alwaysOriginal), for: .normal)
        followButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: followButton)
        
    }
    
    private func setupRightButtonBar (){
        
        let searchButton = UIButton(type: .system)
        searchButton.setImage(#imageLiteral(resourceName: "twittersearch").withRenderingMode(.alwaysOriginal), for: .normal)
        searchButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: searchButton)
        
        let twitterpostButton = UIButton(type: .system)
        twitterpostButton.setImage(#imageLiteral(resourceName: "twitterpost").withRenderingMode(.alwaysOriginal), for: .normal)
        twitterpostButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: twitterpostButton)
        
        //2 Button on right Bar Button setup
        
        navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: twitterpostButton), UIBarButtonItem(customView: searchButton)]
        
    }
}
