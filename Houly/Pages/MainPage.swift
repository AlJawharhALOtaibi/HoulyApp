//
//  MainPage.swift
//  Houly
//
//  Created by AlJawharh AlOtaibi on 28/03/1445 AH.


import SwiftUI
struct MainPage: View { @State private var selectedCategory: Int? = nil

    var body: some View {
        
        VStack {
            ScrollView(.vertical) {
                VStack {
                    VStack {
                        ZStack {
                            Color.customBlue
                            NavBar()
                                .padding(.bottom)
                            SearchBar()
                                .padding(.bottom, 30)
                                .padding(.top, 200)
                            
                        }
                            .cornerRadius(20) // Customize the corner radius
                    }

                      

                        
                    // Categories
                        VStack {
                            HStack {
                                Text("Categories")
                                    .bold()
                                    .multilineTextAlignment(.trailing)
                                    .padding(.leading, 20)
                                    .padding(.top, 20)

                                Spacer()
                            }

                            HStack(spacing: 12) {
                                ForEach(1 ..< 5) { i in
                                    VStack {
                                        Image("categ-\(String(i))")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 50, height: 50)
                                        
                                        if selectedCategory == i {
                                            Text("Category \(i)")
                                                .font(.caption)
                                                .foregroundColor(.customBlue)
                                        }
                                    }
                                    .frame(width: 80, height: 100, alignment: .center)
                                    .background(selectedCategory == i ? Color.blue.opacity(0.2) : Color.white)
                                    .cornerRadius(15)
                                    .shadow(radius: selectedCategory == i ? 5 : 2)
                                    .onTapGesture {
                                        withAnimation {
                                            if selectedCategory == i {
                                                selectedCategory = nil
                                            } else {
                                                selectedCategory = i
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        .padding(.bottom, 70)
                        
//                    // Reorder List
//                    VStack {
//                        HStack {
//                            Text("Your Reorder List ")
//                                .bold()
//                                .multilineTextAlignment(.trailing)
//                                .padding(.leading, 20)
//                            Spacer()
//                        }
//
//                        // Card View
//                        ScrollView(.horizontal) {
//                            HStack {
//                               
//                                  //  Reorder()
//                                     
//                                
//                                
//                            }
//                        }
//                    }
//                    .padding(.top, -30)
                }
            } .edgesIgnoringSafeArea(.top)
                .ignoresSafeArea()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}

struct SearchBar: View {
    @State var search = ""

    var body: some View {
        VStack {
            HStack {
                TextField("Search", text: $search)
                    .font(.title3)
            }
            .frame(width: (UIScreen.main.bounds.width) * 0.85, height: 40, alignment: .leading)
            .padding(.leading, 20)
            .background(Color.white)
            .cornerRadius(16)
        }
    }
}


