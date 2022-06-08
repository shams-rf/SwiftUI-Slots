//
//  ContentView.swift
//  Shared
//
//  Created by Shamsuddin Refaei on 08/06/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var credits = 1000
    let iconList = ["apple", "cherry", "star"]
    @State var icon1 = "apple"
    @State var icon2 = "apple"
    @State var icon3 = "apple"
    
    var body: some View {
        
        // main container for interface
        VStack {
            
            // display title
            Text("SwiftUI Slots")
                .font(.largeTitle)
                .foregroundColor(.red)
            
            Spacer()
            
            // display credit score
            Text("Credits: " + String(credits))
            
            Spacer()
            
            // display 3 icons
            HStack() {
                
                Spacer()
                
                Image(icon1)
                
                Spacer()
                
                Image(icon2)
                
                Spacer()
                
                Image(icon3)
                
                Spacer()
                
            }
            
            Spacer()
            
            Button(" Spin ") {
                
                // randomise icons
                icon1 = iconList[Int.random(in: 0...2)]
                icon2 = iconList[Int.random(in: 0...2)]
                icon3 = iconList[Int.random(in: 0...2)]
                
                // alter score appropriately
                // if 2 icons are identical then increase score by 10
                // if 3 icons are identical then increase score by 30
                // if no icons are identical then decrease score by 20
                if icon1 == icon2 && icon2 == icon3 {
                    credits = credits + 30
                }
                else if (icon1 == icon2) || (icon1 == icon3) || (icon2 == icon3) {
                    credits = credits + 10
                }
                else {
                    credits = credits - 20
                }
                
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.red)
            .font(.title3)
            .cornerRadius(20)
            
            Spacer()
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
