//
//  OnBoarding.swift
//  Houly
//
//  Created by AlJawharh AlOtaibi on 28/03/1445 AH.
//

import Foundation
import SwiftUI

struct OnBoarding: View {
    @State var showSheetView = false
    @State private var currentPage = 0

    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .blue
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
    }

    var body: some View {
        NavigationView {
            VStack {
                TabView(selection: $currentPage) {
                    ForEach(0..<Data.count) { index in
                        GeometryReader { g in
                            VStack {
                                Spacer(minLength: 40) // Add spacing from the top
                                Image(Data[index].image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 350, height: 400)
                                    .clipped()
                                Text(Data[index].title)
                                    .font(.title).bold()
                                
                                Text(Data[index].descrip)
                                    .font(.headline)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.gray) // Set text color to gray
                                    .padding(.horizontal) // Add horizontal padding for description text
                                Spacer() // Add spacing at the bottom
                            }
                            .opacity(Double(g.frame(in: .global).minX) / 200 + 1)
                            .frame(width: UIScreen.main.bounds.width)
                        }
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: currentPage == Data.count - 1 ? .never : .always))
                .edgesIgnoringSafeArea(.top)

                if currentPage == Data.count - 1 {
                    NavigationLink(destination: Location()) {
                        Text("Start")
                            .font(.headline)
                            .frame(width: 200, height: 40)
                            .foregroundColor(.white)
                            .background(Color(red: 78 / 255, green: 96 / 255, blue: 255 / 255))
                            .cornerRadius(10)
                            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 4)
                    }
                }

                Spacer(minLength: 40) // Add extra spacing at the bottom
            }
            .navigationBarItems(trailing: skipButton)
            .navigationBarBackButtonHidden(true)
        }
    }

    private var skipButton: some View {
        if currentPage < 2 {
            return AnyView(NavigationLink(destination: Location()) {
                Text("Skip")
                    .font(.headline)
                    .padding(.trailing, 16)
                    .foregroundColor(Color(red: 78 / 255, green: 96 / 255, blue: 255 / 255))
            })
        } else {
            return AnyView(EmptyView())
        }
    }
}

struct OnBoarding_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding()
    }
}
