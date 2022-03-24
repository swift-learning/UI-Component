//
//  MomentsView.swift
//  UI-Component
//
//  Created by weisite on 2022/3/23.
//

import SwiftUI

struct MomentsView: View {
    
    var body: some View {
        ScrollView() {
            BackgroundImgView(picName: "pic-background")
            UserNameAvatarView(name: "桃子猪", avatar: "avatar1")
                .padding(.trailing)
                .offset(y: -70)
            ForEach(moments, id: \.self) { moment in
                MomentView(moment: moment)
            }
        }
        .navigationBarTitle("朋友圈", displayMode: .inline)
    }
}

struct MomentsView_Previews: PreviewProvider {
    static var previews: some View {
        MomentsView()
    }
}
