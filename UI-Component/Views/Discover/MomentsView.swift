//
//  MomentsView.swift
//  UI-Component
//
//  Created by weisite on 2022/3/23.
//

import SwiftUI

struct MomentsView: View {
    let user: User
    let moments: [Moment]
    
    var body: some View {
        ScrollView() {
            BackgroundImgView(picName: user.backgroundPicName!)
            UserNameAvatarView(user: user)
                .padding(.trailing)
                .offset(y: -70)
            ForEach(moments, id: \.self) { moment in
                MomentView(moment: moment, user: moment.user)
            }
        }
        .navigationBarTitle("朋友圈", displayMode: .inline)
    }
}

struct MomentsView_Previews: PreviewProvider {
    static var previews: some View {
        MomentsView(user: defaultUser, moments: allMoments)
    }
}
