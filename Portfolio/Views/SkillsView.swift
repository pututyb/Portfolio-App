//
//  SkillsView.swift
//  Portfolio
//
//  Created by Putut Yusri Bahtiar on 08/03/23.
//

import SwiftUI
import SwiftUICharts

struct SkillsView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color("bg2"), Color("font")], startPoint: .top, endPoint: .bottom)
            
            VStack(alignment: .leading) {
                Spacer()
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 32, weight: .semibold))
                    .padding(.all)
                
                Text("I am specializing in iOS Development.\nI stay up to date with the lastest technologies.")
                    .foregroundColor(.white)
                    .opacity(0.9)
                    .padding(.leading)
                Image("radar")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 400, height: 350)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .padding(.leading)
                HStack {
                    Spacer()
                    VStack {
                        Image(systemName: "link")
                            .frame(width: 90, height: 90)
                            .foregroundColor(.white)
                            .background(Color("font"))
                            .cornerRadius(20)
                        Text("Git")
                            .foregroundColor(.white)
                            .font(.footnote)
                    }
                    Spacer()
                    VStack {
                        Image(systemName: "pencil.tip")
                            .frame(width: 90, height: 90)
                            .foregroundColor(.white)
                            .background(Color("font"))
                            .cornerRadius(20)
                        Text("MVVM")
                            .foregroundColor(.white)
                            .font(.footnote)
                    }
                    Spacer()
                    VStack {
                        Image(systemName: "figure.run")
                            .frame(width: 90, height: 90)
                            .foregroundColor(.white)
                            .background(Color("font"))
                            .cornerRadius(20)
                        Text("Sprint")
                            .foregroundColor(.white)
                            .font(.footnote)
                    }
                    Spacer()
                }
                .padding(.all)
                Spacer()
                Spacer()
            }
        }
        .ignoresSafeArea()
    }
}


struct SkillsView_Previews: PreviewProvider {
    static var previews: some View {
        SkillsView()
    }
}
