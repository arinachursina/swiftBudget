import SwiftUI

struct BudgetTrackerView: View {
    @State private var budgetCategories = [
        BudgetCategory(name: "Groceries", budgetLimit: 500, expenses: []),
        BudgetCategory(name: "Entertainment", budgetLimit: 200, expenses: []),
        BudgetCategory(name: "Dining Out", budgetLimit: 300, expenses: []),
        BudgetCategory(name: "Shopping", budgetLimit: 400, expenses: []),
        // Add more budget categories as needed
    ]
    
    var body: some View {
        VStack {
            Text("Budget Tracker")
                .font(.title)
                .padding()
            
            ForEach(budgetCategories) { category in
                VStack {
                    Text(category.name)
                        .font(.headline)
                    ProgressView(value: totalSpent(for: category), total: category.budgetLimit)
                        .padding(.horizontal)
                        .padding(.bottom)
                    
                    // Display detailed expenses for the category
                    HStack {
                        Text("Total Spent:")
                        Spacer()
                        Text("$\(totalSpent(for: category), specifier: "%.2f")")
                    }
                    .padding(.horizontal)
                    
                    // Add button to add expenses
                    Button("Add Expense") {
                        // Implement code to add expenses
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.horizontal)
                }
            }
            
            Spacer()
        }
    }
    
    private func totalSpent(for category: BudgetCategory) -> Double {
        return category.expenses.reduce(0, +)
    }
}
