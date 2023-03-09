//
//  InterestView.swift
//  Portfolio
//
//  Created by Putut Yusri Bahtiar on 08/03/23.
//

import SwiftUI

struct InterestView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color("bg1"), Color("bg2")], startPoint: .top, endPoint: .bottom)
            
            VStack(spacing: 20) {
                Image("foto")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 250, height: 250)
                    .clipShape(Circle())
                
                Text("Interest")
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .bold))
                
                HStack {
                    Text("Design")
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .semibold))
                    Spacer()
                }
                .padding(.leading)
                
                HStack {
                    Text("Mobile App Development")
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .semibold))
                    Spacer()
                }
                .padding(.leading)
                
                HStack {
                    Text("UI/UX")
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .semibold))
                    Spacer()
                }.padding(.leading)
            }
        }
        .ignoresSafeArea()
    }
}

struct InterestView_Previews: PreviewProvider {
    static var previews: some View {
        InterestView()
    }
}
