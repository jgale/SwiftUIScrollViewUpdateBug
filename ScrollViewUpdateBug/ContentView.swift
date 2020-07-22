//
//  ContentView.swift
//  ScrollViewUpdateBug
//
//  Created by Jeremy Gale on 2020-07-21.
//  Copyright © 2020 Jeremy Gale. All rights reserved.
//

import SwiftUI

struct Object: Identifiable {
    var id: String
}

struct ContentView: View {
    @State var array = [Object]()

    var body: some View {
        //VStack { // uncomment the VStack to see that it works perfectly fine
            ScrollView() {
                // Uncomment this rectangle to see it work perfectly fine
                //Rectangle().frame(width: UIScreen.main.bounds.size.width, height: 0.01)
                ForEach(array) { object in
                    Text(object.id)
                }
            }
        //} // uncomment the VStack to see that it works perfectly fine
            .onAppear(perform: {
                self.array = [
                    Object(id: "1"),
                    Object(id: "2"),
                    Object(id: "3"),
                    Object(id: "4"),
                    Object(id: "5")
                ]
            })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
