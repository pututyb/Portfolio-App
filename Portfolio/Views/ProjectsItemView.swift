//
//  ProjectsItemView.swift
//  Portfolio
//
//  Created by Putut Yusri Bahtiar on 08/03/23.
//

import SwiftUI

struct ProjectsItemView: View {
    var imageName: String
    var title: String
    var description: String
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 350, height: 550)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading, spacing: 8) {
                Text(title)
                    .font(.system(size: 24, weight: .semibold))
                    .foregroundColor(.white)
                    .padding(.top, 16)
                
                Text(description)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.white)
                    .opacity(0.9)
                    .lineLimit(2)
                    .padding(.top, 8)
                    .padding(.bottom, 16)
            }
            .padding()
            .background(
                Color(UIColor(named: "bg2")!)
                    .opacity(0.7)
            )
            .cornerRadius(12)
            .padding(16)
        }
        .padding(.horizontal)
    }
}

struct ProjectsItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectsItemView(imageName: "foto", title: "Project Title", description: "Project Description")
    }
}
