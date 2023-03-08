//
//  ProjectsView.swift
//  Portfolio
//
//  Created by Putut Yusri Bahtiar on 08/03/23.
//

import SwiftUI

struct ProjectsView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color("bg1"), Color("bg2")], startPoint: .top, endPoint: .bottom)
            
            VStack(alignment: .leading) {
                HStack {
                    Text("Projects")
                        .font(.system(size: 32, weight: .semibold))
                        .foregroundColor(.white)
                        .padding(.leading)
                }
                .padding(.top, 50)
                
                Spacer()
                
                Text("There is still a lot discover, create, and solve. Thats why i'm striving to work on projects that bring tommorow to today.")
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.white)
                    .opacity(0.9)
                    .padding()
                
                GeometryReader { geometry in
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ProjectsItemView(imageName: "weatherapp", title: "Weather App", description: "Display Weather Information\nBasic version.")
                            ProjectsItemView(imageName: "checkmypasswordapp", title: "Check My Password", description: "Check password has pwned / no\n with 28K sample password.")
                            ProjectsItemView(imageName: "splitbillapp", title: "Split Bill", description: "User can check previous data\ninformation split bill.")
                        }
                    }
                    .padding(.all)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .ignoresSafeArea()
    }
}

struct ProjectsView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectsView()
    }
}
