import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            BudgetTrackerView()
                .navigationTitle("Budget Tracker")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
