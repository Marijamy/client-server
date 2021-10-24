//
//  Community.swift
//  AksenovaMV
//
//  Created by Klepa on 09.10.2021.
//

import Foundation
import Alamofire

struct Friend{
    
}

final class FriendsAPI{
    let baseURL = "https://api.vk.com/method"
    let token = MySession.shared.token
    let userID = MySession.shared.token
    let version = "5.68"

    func getFriends(complition: @escaping ([Friend])-> ()){
        
        let method = "friends.get"
        let parameters: Parameters = [
            "user_id": userID,
            "order": "name",
            "fields": "photo_100",
            "count": 10,
            "access_token": token,
            "v": version
        ]
        
        let url = baseURL + method
        AF.request(url, method: .get, parameters: parameters).responseJSON{response in print(response.value)}
    
}
}
