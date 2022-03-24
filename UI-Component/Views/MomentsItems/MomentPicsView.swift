//
//  MomentPicsView.swift
//  UI-Component
//
//  Created by weisite on 2022/3/24.
//

import SwiftUI

struct MomentPicsView: View {
    let pics: [String]
    
    var body: some View {
        if (pics.count == 1) {
            Image(pics[0])
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.nativeBounds.width * 0.2)
        }
    }
}
