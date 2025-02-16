import GameKit

public func grantAchievement(_ id: String, percentComplete: Double = 100) {
    let achievement = GKAchievement(identifier: id)
    achievement.percentComplete = percentComplete
    achievement.showsCompletionBanner = true
    
    GKAchievement.report([achievement]) { error in
        if let error {
            print("Error granting achievement:", error.localizedDescription)
        } else {
            print("Achievement granted:", id)
        }
    }
}
