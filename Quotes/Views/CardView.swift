//
//  CardView.swift
//  Quotes
//
//  Created by Jason Cao on 3/15/22.
//

import SwiftUI

struct CardView: View {
    var author: Author
    
    var body: some View {
        ZStack {
            Image(author.image)
                .resizable()
                .frame(width: 400, height: 450, alignment: .center)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
            VStack(alignment: .leading, spacing: 15.0) {
                Text(author.quotes[0])
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                Text("- \(author.name)")
                    .font(.subheadline)
            }
            .shadow(radius: 10)
            .foregroundColor(.white)
            .padding(.horizontal, 50.0)
        }
        .cornerRadius(30)
        .padding(.all, 5.0)
    }
}

struct CardView_Previews: PreviewProvider {
    static var testAuthor = Author(id: UUID(), name: "Author's name", quotes: ["Quote 1", "Quote 2"], image: "focus")
    
    static var previews: some View {
        CardView(author: testAuthor)
            .previewLayout(.sizeThatFits)
    }
}
