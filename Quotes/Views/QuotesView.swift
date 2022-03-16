//
//  QuotesView.swift
//  Quotes
//
//  Created by Jason Cao on 3/14/22.
//

import SwiftUI

struct QuotesView: View {
    @ObservedObject var model = AuthorModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach (model.authors) { author in
                        NavigationLink(destination: QuoteDetailView(author: author), label: {
                            CardView(author: author)
                        })
                    }
                }
            }.navigationTitle("Quotes")
        }
    }
}

struct QuotesView_Previews: PreviewProvider {
    static var previews: some View {
        QuotesView()
    }
}
