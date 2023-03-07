//
//  AboutView.swift
//  Portfolio
//
//  Created by Putut Yusri Bahtiar on 07/03/23.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color("bg1"), Color("bg2")], startPoint: .top, endPoint: .bottom)
            
            VStack {
                Image("foto")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                
                    HStack {
                        Spacer()
                        Image("en")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 24, height: 24)
                            .clipShape(Circle())
                        Image("id")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 24, height: 24)
                            .clipShape(Circle())
                    }
                    .padding()
                
                Text("Putut Yusri Bahtiar")
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .semibold))
                Text("iOS Developer")
                    .font(.system(size: 14, weight: .light))
                    .foregroundColor(.white)
                Text("Jakarta, ID")
                    .font(.system(size: 14, weight: .light))
                    .foregroundColor(.white)
                
                HStack(spacing: 40) {
                    VStack {
                        Text("5 Years")
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .semibold))
                        Text("Experience")
                            .font(.system(size: 14, weight: .light))
                            .foregroundColor(.white)
                            .opacity(0.5)
                    }
                    
                    Divider()
                            .background(Color.white)
                            .frame(width: 1, height: 50)
                            .padding(.vertical, 20)
                    
                    VStack {
                        Text("22")
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .semibold))
                        Text("Age")
                            .font(.system(size: 14, weight: .light))
                            .foregroundColor(.white)
                            .opacity(0.5)
                    }
                    
                    Divider()
                            .background(Color.white)
                            .frame(width: 1, height: 50)
                            .padding(.vertical, 20)
                    
                    VStack {
                        Text("Bechelor")
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .semibold))
                        Text("Degree")
                            .font(.system(size: 14, weight: .light))
                            .foregroundColor(.white)
                            .opacity(0.5)
                    }
                }
                
                Text("I am a software engineer based in Bekasi, Inddonesia. I specialize in ios development for mobile applications.")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .light))
                    .opacity(0.9)
                    .padding(.bottom)
                
                Button(action: {
                    if let url = URL(string: "https://github.com/pututyb") {
                        UIApplication.shared.open(url)
                    }
                }) {
                    HStack {
                        Text("Contact Me")
                            .foregroundColor(.white)
                            .frame(width: 200, height: 50)
                            .background(Color("font"))
                            .clipShape(RoundedRectangle(cornerRadius: 25))
                            .overlay(
                                Image(systemName: "person")
                                    .foregroundColor(.white)
                                    .padding(.trailing, 10),
                                alignment: .trailing
                            )
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
