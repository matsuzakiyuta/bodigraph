import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ContentUnavailableView(
                "Bodigraph",
                systemImage: "chart.xyaxis.line",
                description: Text("体重と体脂肪率の記録を準備中です")
            )
            .navigationTitle("Bodigraph")
        }
    }
}

