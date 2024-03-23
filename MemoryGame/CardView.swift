import SwiftUI

struct CardView: View {
    var card: Card
    
    var body: some View {
        Group {
            if card.isMatched {
                RoundedRectangle(cornerRadius: 10).opacity(0) // Make matched cards invisible
            } else {
                ZStack {
                    if card.isFaceUp {
                        RoundedRectangle(cornerRadius: 10).fill(Color.red)
                        RoundedRectangle(cornerRadius: 10).strokeBorder(lineWidth: 3)
                        Text(card.content)
                    } else {
                        RoundedRectangle(cornerRadius: 10).fill(Color.green)
                    }
                }
                .aspectRatio(2/3, contentMode: .fit)
            }
        }
    }
}

