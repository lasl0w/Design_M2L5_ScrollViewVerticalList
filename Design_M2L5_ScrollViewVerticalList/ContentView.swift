//
//  ContentView.swift
//  Design_M2L5_ScrollViewVerticalList
//
//  Created by tom montgomery on 10/11/23.
//

import SwiftUI

struct ContentView: View {
    
    var items = ["cat","dog","mouse","panther"]
    
    var body: some View {
        
        // Scrollviews automatically handle shifting elements when showing/hiding the onscreen keyboard
        
        //            VStack {
        //                Image(systemName: "globe")
        //                    .imageScale(.large)
        //                    .foregroundStyle(.tint)
        //                Text("Hello, world!")
        //            }
        //            .padding()
        // List is automatically a scrollview
        // BENEFITS - row seperators AND Swipe actions
        // TODO: How have lists changed in XCode 15
        
        // METHOD 1 - trailing closure
        List(items, id: \.self) { item in
            Text(item)
        }
        
        
        // METHOD 2 - FOREACH
        List {
            ForEach(items, id: \.self) { item in
                Text(item)
            }
        }
        
        // METHOD 3 - Scrollview + Custom VStack
        ScrollView {
            VStack {
                // starts with less, but has more custom control
                ForEach(items, id: \.self) { item in
                    Text(item)
                    
                }
            }
        }
        
        
        
    }
}

#Preview {
    ContentView()
}
