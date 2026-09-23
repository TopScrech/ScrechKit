import Testing
@testable import ScrechKit

@MainActor
struct AsyncButtonTests {
    @Test func acceptsSynchronousFunctions() {
        let action: @MainActor @Sendable () -> Void = {}
        let titleKey: LocalizedStringKey = "Run"
        let title = String("Run")

        _ = AsyncButton(action: action) {
            Text("Run")
        }
        _ = AsyncButton(titleKey, role: .destructive, action: action)
        _ = AsyncButton(title, action: action)
        _ = AsyncButton(titleKey, systemImage: "play", action: action)
        _ = AsyncButton(title, systemImage: "play", role: .destructive, action: action)
    }

    @Test func acceptsAsynchronousFunctions() {
        let action: @MainActor @Sendable () async -> Void = {}
        let titleKey: LocalizedStringKey = "Run"
        let title = String("Run")

        _ = AsyncButton(action: action) {
            Text("Run")
        }
        _ = AsyncButton(titleKey, role: .destructive, action: action)
        _ = AsyncButton(title, action: action)
        _ = AsyncButton(titleKey, systemImage: "play", action: action)
        _ = AsyncButton(title, systemImage: "play", role: .destructive, action: action)
    }
}
