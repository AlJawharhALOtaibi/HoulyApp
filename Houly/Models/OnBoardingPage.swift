//
//  OnBoardingPage.swift
//  Houly
//
//  Created by AlJawharh AlOtaibi on 28/03/1445 AH.
//

import Foundation


struct Page : Identifiable {
    var id : Int
    var image : String
    var title : String
    var descrip : String
}

var Data = [
    Page(id: 0, image: "onBoarding-1", title: "Explore Your Area", descrip: "See if there is somthing you need, and let us provide it to you."),
    Page(id: 1, image: "onBoarding-2", title: "Be part of a working network", descrip: "Everyone is here to give and receive."),
    Page(id: 2, image: "onBoarding-3", title: "Invest in yourself", descrip: "Make your steps get paied.")
]
