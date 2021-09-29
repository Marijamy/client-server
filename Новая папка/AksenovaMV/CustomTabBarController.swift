//
//  CustomTabBarController.swift
//  AksenovaMV
//
//  Created by Klepa on 05.05.2021.
//

import UIKit

class CustomTabBarController: UITabBarController {
    
    func setNewUser(userNumber: Int, name: String, age: Int) -> User {
        var user = User(name: name, age: age)
        user.age = age
        
        var imageName = String(userNumber) + "-1"
        user.avatar = UIImage(named: imageName)
        
        for index in 2...5 {
            imageName = String(userNumber) + "-" + String(index)
            if let image = UIImage(named: imageName) {
                user.fotoArray.append(image)
            }
        }
        return user
    }

    
    func firstFillArray() {
        
        let user1 = setNewUser(userNumber: 1, name: "Чип и Дейл", age: 32)
        let user2 = setNewUser(userNumber: 2, name: "Минни Маус", age: 93)
        let user3 = setNewUser(userNumber: 3, name: "Матроскин", age: 43)
        let user4 = setNewUser(userNumber: 4, name: "Леопольд", age: 46)
        let user5 = setNewUser(userNumber: 5, name: "Миньоны", age: 11)
        let user6 = setNewUser(userNumber: 6, name: "Грю", age: 40)
        let user7 = setNewUser(userNumber: 7, name: "Золушка", age: 16)
        let user8 = setNewUser(userNumber: 8, name: "Винни пух", age: 52)
        let user9 = setNewUser(userNumber: 9, name: "Олимпийский мишка", age: 41)
        let user10 = setNewUser(userNumber: 10, name: "Чебурашка", age: 55)
        let user11 = setNewUser(userNumber: 11, name: "Шапокляк", age: 55)
        let user12 = setNewUser(userNumber: 12, name: "Крокодил Гена", age: 55)
        let user13 = setNewUser(userNumber: 13, name: "Пятачок", age: 52)
        let user14 = setNewUser(userNumber: 14, name: "Ослик Иа", age: 52)
        let user15 = setNewUser(userNumber: 15, name: "Крошка енот", age: 47)
        
        let userArray = [user1, user2, user3, user4, user5, user6, user7, user8, user9, user10, user11, user12, user13, user14, user15]
        
        let sortedUsers = userArray.sorted(by: { $0.name < $1.name })
    
        let group1 = Group(name: "Фурнитура для рукоделия", fotoGroup: UIImage(named: "11"))
        let group2 = Group(name: "Вышиваем крестиком", fotoGroup: UIImage(named: "12"))
        let group3 = Group(name: "Ткани", fotoGroup: UIImage(named: "13"))
        let group4 = Group(name: "Шьем детям",  fotoGroup: UIImage(named: "14"))
        
        let groupArray = [group1, group2, group3, group4]
        
        let sortedGroup = groupArray.sorted { $0.name < $1.name}
        
    
        
        
        let new3 = New(name: user5.name, time: "55 минут назад", avatar: user5.avatar, description: "...человечество забыло законы своего божественного спасителя, учившего нас любви и прощению обид, и что оно полагает главное достоинство свое в искусстве убивать друг друга... (Марья Болконская)", fotoNews: UIImage(named: "3"))
        let new4 = New(name: user7.name, time: "час назад", avatar: user7.avatar, description: "Дожди-дожди... Опять дожди...", fotoNews: UIImage(named: "4"))
        let new5 = New(name: user3.name, time: "2 часа назад", avatar: user3.avatar, description: "Отличные выходные в кругу лучших друзей!", fotoNews: UIImage(named: "5"))
        
        let newsArray = [new3, new4, new5]
        
        DataStorage.shared.myNews = newsArray
        DataStorage.shared.usersArray = sortedUsers
        DataStorage.shared.allGroup = sortedGroup
        // DataStorage.shared.searchUser = searchUsers
        
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
        override func viewDidLoad() {
            super.viewDidLoad()

            firstFillArray()
        }
        
}
