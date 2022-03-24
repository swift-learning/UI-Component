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
            Image("pic-background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 300)
        }
        .navigationBarTitle("朋友圈", displayMode: .inline)
    }
}

struct MomentsView_Previews: PreviewProvider {
    static var previews: some View {
        MomentsView()
    }
}
