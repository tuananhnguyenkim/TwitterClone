//
//  TweetCell.swift
//  Twitter Demo
//
//  Created by Jin Std on 15/07/2018.
//  Copyright © 2018 Jin Std. All rights reserved.
//

import LBTAComponents

class TweetCell : DatasourceCell {
    
    override var datasourceItem: Any? {
        didSet {
            guard let tweet = datasourceItem as? Tweet else {return}
            
            let attributedText = NSMutableAttributedString(string: tweet.user.name, attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 16)])
            
            let usernameString = "  \(tweet.user.username)\n"
            attributedText.append(NSAttributedString(string: usernameString, attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 15), NSAttributedStringKey.foregroundColor : UIColor.gray]))
            
            attributedText.append(NSAttributedString(string: tweet.message, attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 15)]))
            

            messangeTextView.attributedText = attributedText
            
          
        }
    }
    
    let messangeTextView : UITextView = {
        let tv = UITextView()
       
        tv.backgroundColor = .clear
        
        return tv
    }()
    
    
    
    let pro5ImgView : UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "elonmuskpro5")
        imageView.layer.cornerRadius = 5
        //imageView.layer.masksToBounds = true
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let shareButton : UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "shareicon").withRenderingMode(.alwaysOriginal), for: .normal)
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
       
        
        return button
    }()
    let shareButtonNumber : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("12", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        //button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: -50, bottom: 0, right: 0)
        return button
    }()
    
    let retweetButton : UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "retweeticon").withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()
    
    let retweetButtonNumber : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("109", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        //button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: -40, bottom: 0, right: 0)
        return button
    }()
    
    let likeButton : UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "likeicon").withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()
    
    let likeButtonNumber : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("90", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        //button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: -50, bottom: 0, right: 0)
        return button
    }()
    
    let dislikeButton : UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "dislikeicon").withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()
    
    let dislikeButtonNumber : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("78", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        //button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: -50, bottom: 0, right: 0)
        return button
    }()
    
    let messageButton : UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "messageicon").withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()
    

    
    override func setupViews() {
        super.setupViews()
        
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        
        backgroundColor = .white
        
        addSubview(messangeTextView)
        addSubview(pro5ImgView)

        
        pro5ImgView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
        
        messangeTextView.anchor(topAnchor, left: pro5ImgView.rightAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 4, leftConstant: 4, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        

        
        setupBotttomButtons()
    }
    
    fileprivate func setupBotttomButtons(){
        
        let shareButtonContainerView = UIView()
        //shareButtonContainerView.backgroundColor = .red

        let retweetButtonContainerView = UIView()
        //retweetButtonContainerView.backgroundColor = .blue
        
        let likeButtonContainerView = UIView()
        //likeButtonContainerView.backgroundColor = .green
        
        let dislikeButtonContainerView = UIView()
        //dislikeButtonContainerView.backgroundColor = .yellow
        
        let messageButtonContainerView = UIView()
        //messageButtonContainerView.backgroundColor = .orange
        
        //show button on bottom buttons
        let buttonStackView = UIStackView(arrangedSubviews: [shareButtonContainerView, retweetButtonContainerView, likeButtonContainerView, dislikeButtonContainerView, messageButtonContainerView])
       
        //set full view horizintal cách chia khung trong một hàng
        buttonStackView.axis = .horizontal
        buttonStackView.distribution = .fillEqually
        
        
        addSubview(buttonStackView)
        buttonStackView.anchor(nil, left: messangeTextView.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 4, rightConstant: 0, widthConstant: 0, heightConstant: 30)
        
        addSubview(shareButton)
        addSubview(shareButtonNumber)
        shareButton.anchor(shareButtonContainerView.topAnchor, left: shareButtonContainerView.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)
        shareButtonNumber.anchor(shareButtonContainerView.topAnchor, left: nil, bottom: nil, right: shareButtonContainerView.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 10, rightConstant: 0, widthConstant: 20, heightConstant: 20)
        
        
        
        addSubview(retweetButton)
        addSubview(retweetButtonNumber)
        retweetButton.anchor(retweetButtonContainerView.topAnchor, left: retweetButtonContainerView.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)
        retweetButtonNumber.anchor(retweetButtonContainerView.topAnchor, left: nil, bottom: nil, right: retweetButtonContainerView.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)
        
        addSubview(likeButton)
        addSubview(likeButtonNumber)
        likeButton.anchor(likeButtonContainerView.topAnchor, left: likeButtonContainerView.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)
        likeButtonNumber.anchor(likeButtonContainerView.topAnchor, left: nil, bottom: nil, right: likeButtonContainerView.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)
        
        addSubview(dislikeButton)
        addSubview(dislikeButtonNumber)
        dislikeButton.anchor(dislikeButtonContainerView.topAnchor, left: dislikeButtonContainerView.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)
        dislikeButtonNumber.anchor(dislikeButtonContainerView.topAnchor, left: nil, bottom: nil, right: dislikeButtonContainerView.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)
        
        addSubview(messageButton)
        messageButton.anchor(messageButtonContainerView.topAnchor, left: messageButtonContainerView.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)
        
        
        
        

        
        
    }
    
    
}
