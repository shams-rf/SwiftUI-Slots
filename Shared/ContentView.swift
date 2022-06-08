//
//  ContentView.swift
//  Shared
//
//  Created by Shamsuddin Refaei on 08/06/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var credits = 1000
    
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
            HStack {
                
                Spacer()
                
                Image("apple")
                
                Spacer()
                
                Image("apple")
                
                Spacer()
                
                Image("apple")
                
                Spacer()
                
            }
            
            Spacer()
            
            Button(" Spin ") {
                
                // randomise icons and alter score accordingly
                
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
