//
//  BackgroundImgView.swift
//  UI-Component
//
//  Created by weisite on 2022/3/24.
//

import SwiftUI

struct BackgroundImgView: View {
    let picName: String
    
    var body: some View {
        Image(picName)
            .resizable()
            .frame(height: 300)
    }
}
