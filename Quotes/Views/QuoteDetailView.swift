//
//  QuoteDetailView.swift
//  Quotes
//
//  Created by Jason Cao on 3/15/22.
//

import SwiftUI

struct QuoteDetailView: View {
    
    var author: Author
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10.0) {
                ForEach (author.quotes, id:\.self) { quote in
                    Text("• " + quote)
                        .font(.title2)
                }
            }
            .padding()
        }.navigationTitle(author.name)
    }
}

struct QuoteDetailView_Previews: PreviewProvider {
    
    static var testAuthor = Author(id: UUID(), name: "Author's name", quotes: ["When something is important enough, you do it even if the odds are not in your favor.",
                                                                               "I'd rather be optimistic and wrong than pessimistic and right."], image: "focus")
    
    static var previews: some View {
        QuoteDetailView(author: testAuthor)
    }
}
