//
//  ContentView.swift
//  Houly
//
//  Created by AlJawharh AlOtaibi on 28/03/1445 AH.
//

import SwiftUI

struct ContentView: View {
    @Binding var showOnboarding: Bool
    @Binding var showSplash: Bool

    var body: some View {
        NavigationView {
            ZStack {
                if showSplash {
                    SplashView(showOnboarding: $showOnboarding, showSplash: $showSplash)
                } else if showOnboarding {
                    OnBoarding()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(showOnboarding: .constant(false), showSplash: .constant(true))
    }
}

struct SplashView: View {
    @Binding var showOnboarding: Bool
    @Binding var showSplash: Bool

    var body: some View {
        ZStack {
            Color.white // Background color
                .ignoresSafeArea()
            
            VStack {
                Image("logo")
                //Text(" Here when your needs are met \nand your steps are paid!")

                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .onTapGesture {
                        withAnimation {
                            showOnboarding = true
                            showSplash = false
                        }
                    }
            }
        }
    }
}

