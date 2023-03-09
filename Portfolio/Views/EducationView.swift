//
//  EducationView.swift
//  Portfolio
//
//  Created by Putut Yusri Bahtiar on 08/03/23.
//

import SwiftUI

struct EducationView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color("bg1"), Color("bg2")], startPoint: .top, endPoint: .bottom)
            
            VStack(alignment: .leading, spacing: 50) {
                Spacer()
                Text("Education")
                    .foregroundColor(.white)
                    .font(.system(size: 32, weight: .semibold))
                Spacer()
                HStack(spacing: 30) {
                    Text("MEKARSARI 04")
                        .frame(width: 150, height: 100)
                        .foregroundColor(.white)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    
                    Text("SMPN 12 TAMSEL")
                        .frame(width: 150, height: 100)
                        .foregroundColor(.white)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                
                HStack(spacing: 30) {
                    Text("SMK Telekomunikasi Telesandi Bekasi")
                        .frame(width: 150, height: 100)
                        .multilineTextAlignment(.center)
                        .lineLimit(3)
                        .foregroundColor(.white)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    
                    Text("S1 Informatika, Univesity Amikom Yogyakarta")
                        .frame(width: 150, height: 100)
                        .multilineTextAlignment(.center)
                        .lineLimit(3)
                        .foregroundColor(.white)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                Spacer()
                Spacer()
            }
        }
        .ignoresSafeArea()
    }
}

struct EducationView_Previews: PreviewProvider {
    static var previews: some View {
        EducationView()
    }
}
