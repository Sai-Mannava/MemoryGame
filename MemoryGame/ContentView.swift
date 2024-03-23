import SwiftUI

struct ContentView: View {
    @State private var cards: [Card] = []
    @State private var firstSelectedIndex: Int?
    @State private var numberOfPairs = 2 // Default number of pairs

    // Layout for the grid
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3) // Adjusted for 3 columns to fit more cards

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(cards.indices, id: \.self) { index in
                    CardView(card: cards[index])
                        .onTapGesture {
                            // Call the function to handle the card tap
                            cardTapped(index: index)
                        }
                }
            }
            .padding()
        }

        Button("Reset") {
            startGame()
        }
        .padding()

        // Stretch feature: Picker for number of pairs
        Picker("Number of Pairs", selection: $numberOfPairs) {
            Text("2").tag(2)
            Text("4").tag(4)
        }
        .pickerStyle(SegmentedPickerStyle())
        .padding()
        .onChange(of: numberOfPairs) { _ in
            startGame()
        }
    }

    // Function to handle card taps
    private func cardTapped(index: Int) {
        if firstSelectedIndex == nil {
            // First card tapped
            firstSelectedIndex = index
        } else {
            // Second card tapped
            if cards[index].content == cards[firstSelectedIndex!].content {
                // Match found
                cards[index].isMatched = true
                cards[firstSelectedIndex!].isMatched = true
            }
            // Reset or flip back after delay to allow for a visible flip effect
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                withAnimation {
                    cards[index].isFaceUp.toggle()
                    cards[firstSelectedIndex!].isFaceUp.toggle()
                    firstSelectedIndex = nil // Reset for the next turn
                }
            }
        }
        // Flip the current card
        withAnimation {
            cards[index].isFaceUp.toggle()
        }
    }

    // Initialize or reset the game
    func startGame() {
        cards = [] // Reset cards
        for pairIndex in 0..<numberOfPairs {
            let content = String(pairIndex) // Simplified content, consider using something more distinct
            let pair = [Card(id: pairIndex*2, content: content), Card(id: pairIndex*2+1, content: content)]
            cards.append(contentsOf: pair)
        }
        cards.shuffle() // Shuffle the cards
        firstSelectedIndex = nil // Reset first selected card
    }
}

// Make sure your Card model conforms to Equatable if you need to compare cards directly.

