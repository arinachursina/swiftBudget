import Foundation

struct BudgetCategory: Identifiable {
    let id = UUID()
    let name: String
    var budgetLimit: Double
    var expenses: [Double]
}
