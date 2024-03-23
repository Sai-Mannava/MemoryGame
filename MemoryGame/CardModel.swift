//
//  CardModel.swift
//  MemoryGame
//
//  Created by Sai Mannava on 3/22/24.
//

import SwiftUI

struct CardModel: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}
struct Card: Identifiable {
    var id: Int
    var isFaceUp: Bool = false
    var isMatched: Bool = false
    var content: String // For simplicity, using String. You can customize this to be an image or other types.
}
#Preview {
    CardModel()
}
