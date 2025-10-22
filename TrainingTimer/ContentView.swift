import SwiftUI
import SwiftData
import Combine

struct ContentView: View {
    
    @Environment(\.modelContext) private var context
    @Query private var timeSettings: [TimeSettings]
    @State private var navigate = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(timeSettings) { timeSetting in
                    NavigationLink(destination: ConfigView(timeSettings: timeSetting)) {
                        BlockView(timeSettings: timeSetting)
                    }
                }
                .onDelete(perform: deleteTimeSetting)
            }
            // 🧭 Titel oben (groß) — wandert beim Scrollen nach oben
            .navigationTitle("Trainings")
            .navigationBarTitleDisplayMode(.large)
            
            // 🧰 Toolbar-Button (oben rechts)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        addTimeSetting()
                    } label: {
                        Image(systemName: "plus")
                    }
                    .buttonStyle(.borderedProminent)
                }
            }
            
            // ▶️ Play-Button unten im Safe Area Bereich
            .safeAreaInset(edge: .bottom) {
                HStack {
                    Spacer()
                    Button {
                        navigate = true
                    } label: {
                        Image(systemName: "play.fill")
                            .font(.system(size: 28))
                    }
                    .buttonStyle(.glassProminent)
                    .buttonBorderShape(.capsule)
                    .controlSize(.extraLarge)
                    Spacer()
                }
                .padding(.vertical, 8)
            }
            
            // 📍 Neue iOS-17 Navigation
            .navigationDestination(isPresented: $navigate) {
                TrainingView()
            }
        }
    }
    
    
    private func addTimeSetting() {
        let newTimeSetting = TimeSettings(trainingTime: 30, pauseTime: 30, reps: 1)
        context.insert(newTimeSetting)
        try? context.save()
    }
    
    private func deleteTimeSetting(at offsets: IndexSet) {
        for index in offsets {
            context.delete(timeSettings[index])
        }
        try? context.save()
    }
}

#Preview {
    ContentView()
}
