import HealthKit

@available(iOS 8, macOS 13, watchOS 2, *)
public extension HKHealthStore {
    func requestAuthorization(_ types: Set<HKSampleType>, completion: @escaping (Bool, Error?) -> Void) {
        self.requestAuthorization(toShare: types, read: types) { success, error in
            completion(success, error)
        }
    }
}

@available(iOS 12, macOS 13, watchOS 5, *)
public extension HKHealthStore {
    func getRequestStatusForAuthorization(_ types: Set<HKSampleType>, completion: @escaping (HKAuthorizationRequestStatus, Error?) -> Void) {
        self.getRequestStatusForAuthorization(toShare: types, read: types) { status, error in
            completion(status, error)
        }
    }
}

@available(iOS 8, macOS 13, watchOS 2, *)
public extension HKQuantityType {
    static func bloodGlucose() -> HKQuantityType? {
        self.quantityType(forIdentifier: .bloodGlucose)
    }
}
// HKQuantityType.quantityType(forIdentifier: .bloodGlucose)
// HKQuantityType.bloodGlucose()


//class func quantityType(forIdentifier identifier: HKQuantityTypeIdentifier) -> HKQuantityType?
