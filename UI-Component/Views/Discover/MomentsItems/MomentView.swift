//
//  MomentView.swift
//  UI-Component
//
//  Created by weisite on 2022/3/24.
//

import SwiftUI



struct MomentView: View {
    @ObservedObject var moment: Moment;
    @ObservedObject var user: User

    var body: some View {
        HStack(alignment: .top) {
            Image(user.avatar)
                .resizable()
                .frame(width: 60, height: 60)
            VStack(alignment: .leading) {
                Text(user.name)
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
                    .background(.gray)
                }
                Spacer()
                    .frame(height: 16)
            }
            Spacer()
        }
        .padding()
    }
}
