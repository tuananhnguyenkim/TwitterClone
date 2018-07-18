//
//  UserCells.swift
//  Twitter Demo
//
//  Created by Jin Std on 14/07/2018.
//  Copyright © 2018 Jin Std. All rights reserved.
//

import LBTAComponents


class UserCell : DatasourceCell {
    
    override var datasourceItem: Any?{
        didSet {
            //print(datasourceItem)
            guard let user = datasourceItem as? User else {return}
            nameLabel.text = user.name
            usernameLabel.text = user.username
            bioTextView.text = user.bioText
            pro5ImgView.image = user.profileIMG
        }
    }
    
    let pro5ImgView : UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "pro5_img")
        imageView.layer.cornerRadius = 5
        //imageView.layer.masksToBounds = true
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Jin Std"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        
        return label
    }()
    
    let usernameLabel: UILabel = {
        let label = UILabel()
        label.text = "@hurri.tank"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = UIColor(r: 130, g: 130, b: 130)
        return label
    }()
    
    let bioTextView: UITextView = {
        let textView = UITextView()
        textView.text = "NGUYEN KIM TUAN ANH(Jin Std) iPhone , iPad , iOS Developer . iOS Developerになりたいです、よろしくお願いします。"
        textView.font = UIFont.systemFont(ofSize: 15)
        textView.backgroundColor = .clear
        
        return textView
    }()
    
    let followButton: UIButton = {
        
        let button = UIButton()
        button.layer.cornerRadius = 5
        button.layer.borderColor = TwitterBntColor.cgColor
        button.layer.borderWidth = 1
        button.setTitle("+ Follow", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(TwitterBntColor, for: .normal)
        button.setImage(#imageLiteral(resourceName: "follow"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -5, bottom: 0, right: 0)
        
        return button
    }()
    
    override func setupViews() {
        super.setupViews()
        
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        
        addSubview(pro5ImgView)
        addSubview(nameLabel)
        addSubview(usernameLabel)
        addSubview(bioTextView)
        addSubview(followButton)
        
        pro5ImgView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
        
        nameLabel.anchor(pro5ImgView.topAnchor, left: pro5ImgView.rightAnchor, bottom: nil, right: followButton.leftAnchor, topConstant: 0, leftConstant: 4, bottomConstant: 0, rightConstant: 12, widthConstant: 0, heightConstant: 20)
        
        usernameLabel.anchor(nameLabel.bottomAnchor, left: nameLabel.leftAnchor, bottom: nil, right: nameLabel.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 20)
        
        bioTextView.anchor(usernameLabel.bottomAnchor, left: usernameLabel.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: -4, leftConstant: -4, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        followButton.anchor(topAnchor, left: nil, bottom: nil, right: self.rightAnchor, topConstant: 12, leftConstant: 0, bottomConstant: 0, rightConstant: 12, widthConstant: 120, heightConstant: 34)
        
    }
    
}
