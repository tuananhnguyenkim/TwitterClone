//
//  HomeDatasource.swift
//  Twitter Demo
//
//  Created by Jin Std on 13/07/2018.
//  Copyright © 2018 Jin Std. All rights reserved.
//

import LBTAComponents

class HomeDatasource : Datasource{
    
    
    let users : [User] = {
        let jinUser = User(name: "Jin Std", username: "@hurri.tank", bioText: "NGUYEN KIM TUAN ANH(Jin Std) iPhone , iPad , iOS Developer . iOS Developerになりたいです、よろしくお願いします。", profileIMG: #imageLiteral(resourceName: "pro5_img"))
        let robertUser = User(name: "Robert Downey Jr", username: "@RobertDowneyJr", bioText: "You know who I am ", profileIMG: #imageLiteral(resourceName: "robert") )
        let billgatesUser = User(name: "Bill Gates", username: "@BillGates", bioText: "Sharing things I'm learning through my foundation work and other interests.", profileIMG: #imageLiteral(resourceName: "billgatespro5"))
        let elonmuskUser = User(name: "Elon Musk", username: "@elonmusk", bioText: "Founder, CEO, and lead designer of SpaceX ,co-founder, CEO, and product architect of Tesla, Inc , and co-founder and CEO of Neuralink  ", profileIMG: #imageLiteral(resourceName: "elonmuskpro5"))
        let obamaUser = User(name: "Barack Obama", username: "@BarackObama", bioText: "Dad, husband, President, citizen.", profileIMG: #imageLiteral(resourceName: "barackobamapro5"))
        
        return [jinUser, robertUser, billgatesUser, elonmuskUser, obamaUser]
        
    }()
    
    let tweets : [Tweet] = {
        let jinUser = User(name: "Elon Musk", username: "@elonmusk", bioText: "NGUYEN KIM TUAN ANH(Jin Std) iPhone , iPad , iOS Developer . iOS Developerになりたいです、よろしくお願いします。", profileIMG: #imageLiteral(resourceName: "elonmuskpro5"))
        
        let elonmuskUser = User(name: "Elon Musk", username: "@elonmusk", bioText: "Founder, CEO, and lead designer of SpaceX ,co-founder, CEO, and product architect of Tesla, Inc , and co-founder and CEO of Neuralink  ", profileIMG: #imageLiteral(resourceName: "elonmuskpro5"))
        
        let tweet = Tweet(user: jinUser, message: "Filled with more than 5,900 pounds of @NASA cargo and research materials, Dragon was captured by @Space_Station crew members and attached to the orbiting laboratory earlier this week for its month long stay. http://instagram.com/p/Bk6MaABF-mL/", img: #imageLiteral(resourceName: "teslacar"))
        
        let tweet2 = Tweet(user: elonmuskUser, message: "Founder, CEO, and lead designer of SpaceX ,co-founder, CEO, and product architect of Tesla, Inc , and co-founder and CEO of Neuralink  ", img: #imageLiteral(resourceName: "teslacar"))
        
        let tweet3 = Tweet(user: elonmuskUser, message: "Tesla critic flips his view, finds the Model 3 has the potential to be profitable https://bloom.bg/2KZYYV6", img: #imageLiteral(resourceName: "teslacar"))
        
        return [tweet, tweet2,tweet3]
    }()
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self, TweetCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        if indexPath.section == 1 {
            return tweets[indexPath.item]
        }
        return users[indexPath.item]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        if section == 1 {
            return tweets.count
        }
        return users.count
    }
    override func numberOfSections() -> Int {
        return 2
    }
    
}
