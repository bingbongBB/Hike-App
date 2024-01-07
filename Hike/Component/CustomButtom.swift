//
//  CustomButtom.swift
//  Hike
//
//  Created by 郭又萓 on 2024/1/7.
//

import SwiftUI

struct CustomButtom: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(LinearGradient(
                    colors: [.white,
                             .customGreenLight,
                            .customGreenMedium],
                    startPoint: .top,
                    endPoint: .bottom))
            Circle()
                .stroke(LinearGradient(
                    colors: [.customGrayLight,
                             .customGrayMedium],
                    startPoint: .top,
                    endPoint: .bottom),lineWidth:4)
            Image(systemName:"figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(LinearGradient(
                    colors: [.customGrayLight,
                             .customGrayMedium],
                    startPoint: .top,
                    endPoint: .bottom))
        }//:ZSTACK
        .frame(width:58,height:58)
    }
}

#Preview {
    CustomButtom()
        .previewLayout(.sizeThatFits)
        .padding()
}
