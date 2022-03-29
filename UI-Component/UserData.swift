//
//  MomentData.swift
//  UI-Component
//
//  Created by weisite on 2022/3/24.
//

import Foundation

class User: Hashable, ObservableObject {
    
    let name: String
    @Published var avatar: String
    var backgroundPicName: String?
    
    init(_ name: String, _ avatar: String) {
        self.name = name
        self.avatar = avatar
        backgroundPicName = nil
    }
    
    init(_ name: String, _ avatar: String, _ back: String) {
        self.name = name
        self.avatar = avatar
        backgroundPicName = back
    }
    
    func changeAvatar() {
        if (avatar == "avatar1") {
            avatar = "avatar4"
        } else {
            avatar = "avatar1"
        }
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
    
    static func == (lhs: User, rhs: User) -> Bool {
        lhs.name == rhs.name
    }
}

class Moment: Hashable, ObservableObject {
    @Published var user: User
    var content: String?
    var pics: [String]?
    var likes: [String]?

    func hash(into hasher: inout Hasher) {
        hasher.combine(content)
    }

    static func ==(lhs: Moment, rhs: Moment) -> Bool {
        lhs.user == rhs.user && lhs.content == rhs.content
    }

    init(user: User, content: String?, pics: [String]?, likes: [String]?) {
        self.user = user
        self.content = content
        self.pics = pics
        self.likes = likes
    }

    init(user: User, content: String?) {
        self.user = user
        self.content = content
    }
}

let peach = User("桃子猪", "avatar1", "pic-background")
let strawberry = User("草莓🐰", "avatar3")
let mango = User("芒果🦒", "avatar2")

let moment1 = Moment(user: peach, content: "不是我矫情，这年呐～就是得和家人一起过才有味道。")
let moment2 = Moment(user: strawberry, content: "今年的支付宝开始集五福啦！去年只中了8.88，希望今年可以多加几个零呢！")
let moment3 = Moment(user: peach, content: "好希望西安疫情早点结束，我可以早一点回家过年。")
let moment4 = Moment(user: mango, content: "草莓兔最近移情别恋，都好久没跟我玩了。哼～生气", pics: ["pic1"], likes: ["草莓🐰"])

let allMoments = [moment1, moment2, moment3, moment4]

let defaultUser = peach
