import HealthKit

@available(iOS 8, macOS 13, watchOS 2, *)
public extension HKHealthStore {
    func requestAuthorization(_ types: Set<HKSampleType>, completion: @escaping (Bool, Error?) -> Void) {
        self.requestAuthorization(toShare: types, read: types) { success, error in
            completion(success, error)
        }
    }
}
