//
//  ContentView.swift
//  SwiftUIHomeScreen
//
//  Created by Chau, Cuong | DCMS on 2020/12/04.
//  Copyright © 2020 Chau, Cuong | DCMS. All rights reserved.
//

import SwiftUI

struct BackgroundImage: View {
    var imagePath: String

    var body: some View {
        Image(imagePath)
            .resizable()
//                .scaledToFit()
//                .aspectRatio(contentMode: .fit)
            .overlay(LinearGradient(gradient: Gradient(colors: [Color(.sRGB, red: 1, green: 1, blue: 1, opacity: 0), .black]), startPoint: .top, endPoint: UnitPoint(x: 0, y: 0.97)))
            .blur(radius: 10)
            .offset(y: -80)
            .frame(maxWidth: 400)
            .frame(height: 300)

    }
}
        
struct ContentView: View {
    
    var items: [Book] = [
        Book(name: "Book 1", imagePath: "cover-1"),
        Book(name: "Book 2", imagePath: "cover-2"),
        Book(name: "Book 3", imagePath: "cover-3"),
        Book(name: "Book 4", imagePath: "cover-4"),
        Book(name: "Book 5", imagePath: "cover-5"),
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(["Continue Reading", "Featured"], id: \.self) { key in
                    CarouselRow(name: key, items: self.items)
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationBarTitle(Text("Home"))
//                .navigationBarItems(leading:
//                    Text("Home")
//                    .bold()
//                    .font(.system(size: 30))
//                    ,trailing:                 Button(action: {
//                        print("fake button")
//                    }) {
//                        Image(systemName: "ellipsis.circle")
//                        .frame(width: 20, height: 20)
//                    }
//                    )
            .onAppear {
                UITableView.appearance().separatorStyle = .none
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
