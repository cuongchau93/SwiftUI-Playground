//
//  CircleImage.swift
//  SwiftUIHomeScreen
//
//  Created by Chau, Cuong | DCMS on 2020/12/04.
//  Copyright © 2020 Chau, Cuong | DCMS. All rights reserved.
//

import SwiftUI

struct ContinueReadingItem: View {
    var book: Book;
    
    var body: some View {
            Image(self.book.imagePath)
                .resizable()
                .frame(width: 200, height: 250, alignment: .top)
                .shadow(radius: 2)
   }
    
}

struct ContinueReadingItem_Previews: PreviewProvider {
    static var previews: some View {
        ContinueReadingItem(book: Book(name: "Book 1", imagePath: "cover-1"))
    }
}
