//
//  MomentView.swift
//  UI-Component
//
//  Created by weisite on 2022/3/24.
//

import SwiftUI

struct Moment: Hashable {
    let name: String
    let avatar: String
    var content: String?
    var pics: [String]?
    var likes: [String]?
}

struct MomentView: View {
    let moment: Moment;
    
    var body: some View {
        HStack(alignment: .top) {
            Image(moment.avatar)
                .resizable()
                .frame(width: 60, height: 60)
            VStack(alignment: .leading) {
                Text(moment.name)
                    .fontWeight(.bold)
                if (moment.content != nil) {
                    Spacer()
                        .frame(height: 8)
                    Text(moment.content!)
                }
                if (moment.pics != nil) {
                    Spacer()
                        .frame(height: 8)
                    MomentPicsView(pics: moment.pics!)
                }
                if (moment.likes != nil) {
                    Spacer()
                        .frame(height: 8)
                    HStack {
                        Image(systemName: "suit.heart")
                            .foregroundColor(.white)
                        ForEach(moment.likes!, id: \.self) { like in
                            Text(like)
                                .foregroundColor(.white)
                        }
                        Spacer()
                    }
                    .frame(width: UIScreen.main.nativeBounds.width * 0.25)
                    .background(.gray)
                }
                Spacer()
                    .frame(height: 16)
            }
        }
    }
}

struct MomentView_Previews: PreviewProvider {
    static var previews: some View {
//        let moment1 = Moment(name: "桃子猪", avatar: "avatar1", content: "不是我矫情，这年呐～就是得和家人一起过才有味道。")
        let moment4 = Moment(name: "芒果🦒", avatar: "avatar2", content: "草莓兔最近移情别恋，都好久没跟我玩了。哼～生气", pics: ["pic1"], likes: ["草莓🐰"])
        MomentView(moment: moment4)
    }
}
