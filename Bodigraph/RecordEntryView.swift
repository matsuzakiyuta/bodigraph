import SwiftUI

struct RecordEntryView: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationStack {
            ContentUnavailableView(
                "記録入力",
                systemImage: "square.and.pencil",
                description: Text("体重と体脂肪率")
            )
            .navigationTitle("記録入力")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("閉じる") { dismiss() }
                }
            }
        }
    }
}
