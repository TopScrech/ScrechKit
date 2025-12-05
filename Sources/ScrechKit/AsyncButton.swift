import SwiftUI

@available(iOS 17, macOS 14, tvOS 17, watchOS 10, *)
/// A button that performs an async task when tapped
struct AsyncButton<Label: View, Trigger: Equatable>: View {
    /// The cancellation trigger
    var cancellation: Trigger?
    
    /// The asynchronous action to perform when the button is tapped
    var action: () async throws -> Void
    
    /// The label of the button
    @ViewBuilder var label: () -> Label
    
    /// Whether the task is currently being performed
    @State private var isPerformingTask = false
    
    /// The error message to display if the task fails
    @State private var errorMessage: String?
    
    /// Whether to show the alert
    @State private var showAlert = false
    
    /// The underlying task for cancellation
    @State private var task: Task<Void, Never>?
    
    init(cancellation: Trigger? = nil, action: @escaping () async throws -> Void, @ViewBuilder label: @escaping () -> Label) {
        self.cancellation = cancellation
        self.action = action
        self.label = label
    }
    
    var body: some View {
        Button {
            isPerformingTask = true
            
            task = Task {
                do {
                    try await action()
                    errorMessage = nil
                    
                } catch is CancellationError {
                    errorMessage = nil
                    
                } catch {
                    errorMessage = error.localizedDescription
                }
                
                isPerformingTask = false
                showAlert = errorMessage != nil
            }
        } label: {
            HStack {
                if isPerformingTask {
                    ProgressView()
                        .controlSize(.mini)
                }
                
                label()
            }
        }
        .disabled(isPerformingTask)
        .onChange(of: cancellation) {
            task?.cancel()
        }
        .alert("Error", isPresented: $showAlert) {
            Button("OK") {}
        } message: {
            Text(errorMessage ?? "")
        }
    }
}
