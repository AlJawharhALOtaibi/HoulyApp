//
//  Location.swift
//  Houly
//
//  Created by AlJawharh AlOtaibi on 28/03/1445 AH.
//

import Foundation
import SwiftUI

extension Color {
    static let customBlue = Color(red: 78/255, green: 96/255, blue: 255/255)
}

struct Location: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                Image("location")
                    .resizable()
                    .scaledToFit()
                
                Text("Welcome!")
                    .font(.title)
                    .bold()
                    .multilineTextAlignment(.center)
                
                Text("Choose your location to find places around you.")
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                    .padding(.all, 20)
                
                NavigationLink(destination: MainPage()) {
                    HStack {
                        Image(systemName: "location.fill")
                            .foregroundColor(.white)
                        
                        Text("Use current location")
                            .bold()
                            .foregroundColor(.white)
                    }
                    .frame(width: 300, height: 60, alignment: .center)
                    .background(Color.customBlue)
                    .cornerRadius(5)
                }
                .padding(.top, 80)
                .padding(.horizontal)
                
                Spacer()
            }
            .navigationBarItems(trailing:
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                        .foregroundColor(.black)
                }
            )
        }
    }
}

struct Location_Previews: PreviewProvider {
    static var previews: some View {
        Location()
    }
}

