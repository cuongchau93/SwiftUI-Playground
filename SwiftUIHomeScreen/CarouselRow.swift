//
//  CarouselRow.swift
//  SwiftUIHomeScreen
//
//  Created by Chau, Cuong | DCMS on 2020/12/08.
//  Copyright © 2020 Chau, Cuong | DCMS. All rights reserved.
//

import SwiftUI

struct CarouselRow: View {
    var name: String
    var items: [Book]
    
    var body: some View {
        VStack(alignment: .leading) {
            if self.name != "Continue Reading" {
                Text(self.name)
                    .font(.headline)
                    .padding(.leading, 15)
                    .padding(.top, 5)
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(self.items) { item in
                        ZStack {
                            if self.name == "Continue Reading" {
                                BackgroundImage(imagePath: item.imagePath)
                                    .frame(maxHeight: .infinity)
                            }
                            ContinueReadingItem(book: item)
                        }
//                        item(landmark: landmark)
//                        item.self
//                        Text(item.imagePath)
//                        Spacer()
                        .padding(5)
                    }
                }
            }
//            .frame(maxheight: 185)
        }
    }
}

struct CarouselRow_Previews: PreviewProvider {
    static var previews: some View {
        CarouselRow(name: "Continue Reading 1",
                    items: [
            Book(name: "Book 1", imagePath: "cover-1"),
            Book(name: "Book 2", imagePath: "cover-2"),
            Book(name: "Book 3", imagePath: "cover-3")
            ]
        )
    }
}
