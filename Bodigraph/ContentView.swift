import SwiftUI

struct ContentView: View {
    @State private var showingRecordEntry = false
    @State private var showingGoalSettings = false

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 24) {
                    VStack(spacing: 12) {
                        Button("記録する", systemImage: "plus") {
                            showingRecordEntry = true
                        }
                        .buttonStyle(.borderedProminent)

                        Button("目標体重を設定", systemImage: "target") {
                            showingGoalSettings = true
                        }
                        .buttonStyle(.bordered)
                    }
                    .controlSize(.large)
                    .frame(maxWidth: .infinity)

                    ContentUnavailableView(
                        "まだ記録がありません",
                        systemImage: "chart.xyaxis.line",
                        description: Text("体重と体脂肪率を記録すると、ここで変化を確認できます")
                    )
                    .frame(maxWidth: .infinity)
                }
                .padding(20)
                .frame(maxWidth: .infinity)
            }
            .navigationTitle("Bodigraph")
            .sheet(isPresented: $showingRecordEntry) {
                RecordEntryView()
            }
            .sheet(isPresented: $showingGoalSettings) {
                GoalSettingsView()
            }
        }
    }
}

