//
//  NavBar.swift
//  Houly
//
//  Created by AlJawharh AlOtaibi on 28/03/1445 AH.
//

import Foundation
import SwiftUI

struct NavBar: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 45, height: 45)
                .foregroundColor(.white)

            VStack(alignment: .leading) {
                Text("Username")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.white)
                HStack {
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 10, height: 10)
                        .foregroundColor(.yellow)
                    
                    Text("4.9")
                        .font(.system(size: 13))
                        .foregroundColor(.white)
                }
            }

            Spacer()

            Text("Edit Profile")
                .font(.system(size: 14))
                .foregroundColor(.white)
                .padding(.horizontal, 16)
                .padding(.vertical, 10)
                .cornerRadius(40)
                .foregroundColor(.white)
        }
        .padding(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 20))
    } 
}
#Preview {
    NavBar()
}
