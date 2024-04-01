#if canImport(HealthKit)

import HealthKit

@available(iOS 8, macOS 13, watchOS 2, *)
public extension HKQuantityType {
    static func activeEnergyBurned() -> HKQuantityType? {
        self.quantityType(forIdentifier: .activeEnergyBurned)
    }
    
    static func basalEnergyBurned() -> HKQuantityType? {
        self.quantityType(forIdentifier: .basalEnergyBurned)
    }
    
    static func bloodAlcoholContent() -> HKQuantityType? {
        self.quantityType(forIdentifier: .bloodAlcoholContent)
    }
    
    static func bloodGlucose() -> HKQuantityType? {
        self.quantityType(forIdentifier: .bloodGlucose)
    }
    
    static func bloodPressureDiastolic() -> HKQuantityType? {
        self.quantityType(forIdentifier: .bloodPressureDiastolic)
    }
    
    static func bloodPressureSystolic() -> HKQuantityType? {
        self.quantityType(forIdentifier: .bloodPressureSystolic)
    }
    
    static func bodyFatPercentage() -> HKQuantityType? {
        self.quantityType(forIdentifier: .bodyFatPercentage)
    }
    
    static func bodyMass() -> HKQuantityType? {
        self.quantityType(forIdentifier: .bodyMass)
    }
    
    static func bodyMassIndex() -> HKQuantityType? {
        self.quantityType(forIdentifier: .bodyMassIndex)
    }
    
    static func bodyTemperature() -> HKQuantityType? {
        self.quantityType(forIdentifier: .bodyTemperature)
    }
    
    static func dietaryBiotin() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryBiotin)
    }
    
    static func dietaryCaffeine() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryCaffeine)
    }
    
    static func dietaryCalcium() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryCalcium)
    }
    
    static func dietaryCarbohydrates() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryCarbohydrates)
    }
    
    static func dietaryChloride() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryChloride)
    }
    
    static func dietaryCholesterol() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryCholesterol)
    }
    
    static func dietaryChromium() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryChromium)
    }
    
    static func dietaryCopper() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryCopper)
    }
    
    static func dietaryEnergyConsumed() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryEnergyConsumed)
    }
    
    static func dietaryFatMonounsaturated() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryFatMonounsaturated)
    }
    
    static func dietaryFatPolyunsaturated() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryFatPolyunsaturated)
    }
    
    static func dietaryFatSaturated() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryFatSaturated)
    }
    
    static func dietaryFatTotal() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryFatTotal)
    }
    
    static func dietaryFiber() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryFiber)
    }
    
    static func dietaryFolate() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryFolate)
    }
    
    static func dietaryIodine() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryIodine)
    }
    
    static func dietaryIron() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryIron)
    }
    
    static func dietaryMagnesium() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryMagnesium)
    }
    
    static func dietaryManganese() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryManganese)
    }
    
    static func dietaryMolybdenum() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryMolybdenum)
    }
    
    static func dietaryNiacin() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryNiacin)
    }
    
    static func dietaryPantothenicAcid() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryPantothenicAcid)
    }
    
    static func dietaryPhosphorus() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryPhosphorus)
    }
    
    static func dietaryPotassium() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryPotassium)
    }
    
    static func dietaryProtein() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryProtein)
    }
    
    static func dietaryRiboflavin() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryRiboflavin)
    }
    
    static func dietarySelenium() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietarySelenium)
    }
    
    static func dietarySodium() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietarySodium)
    }
    
    static func dietarySugar() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietarySugar)
    }
    
    static func dietaryThiamin() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryThiamin)
    }
    
    static func dietaryVitaminA() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryVitaminA)
    }
    
    static func dietaryVitaminB6() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryVitaminB6)
    }
    
    static func dietaryVitaminB12() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryVitaminB12)
    }
    
    static func dietaryVitaminD() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryVitaminD)
    }
    
    static func dietaryVitaminE() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryVitaminE)
    }
    
    static func dietaryVitaminK() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryVitaminK)
    }
    
    static func dietaryZinc() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryZinc)
    }
    
    static func distanceCycling() -> HKQuantityType? {
        self.quantityType(forIdentifier: .distanceCycling)
    }
    
    static func distanceWalkingRunning() -> HKQuantityType? {
        self.quantityType(forIdentifier: .distanceWalkingRunning)
    }
    
    static func electrodermalActivity() -> HKQuantityType? {
        self.quantityType(forIdentifier: .electrodermalActivity)
    }
    
    static func flightsClimbed() -> HKQuantityType? {
        self.quantityType(forIdentifier: .flightsClimbed)
    }
    
    static func forcedExpiratoryVolume1() -> HKQuantityType? {
        self.quantityType(forIdentifier: .forcedExpiratoryVolume1)
    }
    
    static func forcedVitalCapacity() -> HKQuantityType? {
        self.quantityType(forIdentifier: .forcedVitalCapacity)
    }
    
    static func heartRate() -> HKQuantityType? {
        self.quantityType(forIdentifier: .heartRate)
    }
    
    static func height() -> HKQuantityType? {
        self.quantityType(forIdentifier: .height)
    }
    
    static func inhalerUsage() -> HKQuantityType? {
        self.quantityType(forIdentifier: .inhalerUsage)
    }
    
    static func leanBodyMass() -> HKQuantityType? {
        self.quantityType(forIdentifier: .leanBodyMass)
    }
    
    static func nikeFuel() -> HKQuantityType? {
        self.quantityType(forIdentifier: .nikeFuel)
    }
    
    static func numberOfTimesFallen() -> HKQuantityType? {
        self.quantityType(forIdentifier: .numberOfTimesFallen)
    }
    
    static func oxygenSaturation() -> HKQuantityType? {
        self.quantityType(forIdentifier: .oxygenSaturation)
    }
    
    static func peakExpiratoryFlowRate() -> HKQuantityType? {
        self.quantityType(forIdentifier: .peakExpiratoryFlowRate)
    }
    
    static func peripheralPerfusionIndex() -> HKQuantityType? {
        self.quantityType(forIdentifier: .peripheralPerfusionIndex)
    }
    
    static func respiratoryRate() -> HKQuantityType? {
        self.quantityType(forIdentifier: .respiratoryRate)
    }
    
    static func stepCount() -> HKQuantityType? {
        self.quantityType(forIdentifier: .stepCount)
    }
} // iOS 8, macOS 13, watchOS 2

@available(iOS 9, macOS 13, watchOS 2, *)
public extension HKQuantityType {
    static func basalBodyTemperature() -> HKQuantityType? {
        self.quantityType(forIdentifier: .basalBodyTemperature)
    }
    
    static func dietaryWater() -> HKQuantityType? {
        self.quantityType(forIdentifier: .dietaryWater)
    }
    
    static func uvExposure() -> HKQuantityType? {
        self.quantityType(forIdentifier: .uvExposure)
    }
}

@available(iOS 9.3, macOS 13, watchOS 2.2, *)
public extension HKQuantityType {
    static func appleExerciseTime() -> HKQuantityType? {
        self.quantityType(forIdentifier: .appleExerciseTime)
    }
}

@available(iOS 10, macOS 13, watchOS 3, *)
public extension HKQuantityType {
    static func distanceSwimming() -> HKQuantityType? {
        self.quantityType(forIdentifier: .distanceSwimming)
    }
    
    static func distanceWheelchair() -> HKQuantityType? {
        self.quantityType(forIdentifier: .distanceWheelchair)
    }
    
    static func pushCount() -> HKQuantityType? {
        self.quantityType(forIdentifier: .pushCount)
    }
    
    static func swimmingStrokeCount() -> HKQuantityType? {
        self.quantityType(forIdentifier: .swimmingStrokeCount)
    }
}

@available(iOS 11, macOS 13, watchOS 4, *)
public extension HKQuantityType {
    static func heartRateVariabilitySDNN() -> HKQuantityType? {
        self.quantityType(forIdentifier: .heartRateVariabilitySDNN)
    }
    
    static func insulinDelivery() -> HKQuantityType? {
        self.quantityType(forIdentifier: .insulinDelivery)
    }
    
    static func restingHeartRate() -> HKQuantityType? {
        self.quantityType(forIdentifier: .restingHeartRate)
    }
    
    static func waistCircumference() -> HKQuantityType? {
        self.quantityType(forIdentifier: .waistCircumference)
    }
    
    static func walkingHeartRateAverage() -> HKQuantityType? {
        self.quantityType(forIdentifier: .walkingHeartRateAverage)
    }
}

@available(iOS 11.2, macOS 13, watchOS 4.2, *)
public extension HKQuantityType {
    static func distanceDownhillSnowSports() -> HKQuantityType? {
        self.quantityType(forIdentifier: .distanceDownhillSnowSports)
    }
}

@available(iOS 13, macOS 13, watchOS 6, *)
public extension HKQuantityType {
    static func appleStandTime() -> HKQuantityType? {
        self.quantityType(forIdentifier: .appleStandTime)
    }
    
    static func environmentalAudioExposure() -> HKQuantityType? {
        self.quantityType(forIdentifier: .environmentalAudioExposure)
    }
    
    static func headphoneAudioExposure() -> HKQuantityType? {
        self.quantityType(forIdentifier: .headphoneAudioExposure)
    }
}

@available(iOS 14, macOS 13, watchOS 7, *)
public extension HKQuantityType {
    static func sixMinuteWalkTestDistance() -> HKQuantityType? {
        self.quantityType(forIdentifier: .sixMinuteWalkTestDistance)
    }
    
    static func stairAscentSpeed() -> HKQuantityType? {
        self.quantityType(forIdentifier: .stairAscentSpeed)
    }
    
    static func stairDescentSpeed() -> HKQuantityType? {
        self.quantityType(forIdentifier: .stairDescentSpeed)
    }
    
    static func walkingAsymmetryPercentage() -> HKQuantityType? {
        self.quantityType(forIdentifier: .walkingAsymmetryPercentage)
    }
    
    static func walkingDoubleSupportPercentage() -> HKQuantityType? {
        self.quantityType(forIdentifier: .walkingDoubleSupportPercentage)
    }
    
    static func walkingSpeed() -> HKQuantityType? {
        self.quantityType(forIdentifier: .walkingSpeed)
    }
    
    static func walkingStepLength() -> HKQuantityType? {
        self.quantityType(forIdentifier: .walkingStepLength)
    }
}

@available(iOS 14.5, macOS 13, watchOS 7.4, *)
public extension HKQuantityType {
    static func appleMoveTime() -> HKQuantityType? {
        self.quantityType(forIdentifier: .appleMoveTime)
    }
}

@available(iOS 15, macOS 13, watchOS 8, *)
public extension HKQuantityType {
    static func appleWalkingSteadiness() -> HKQuantityType? {
        self.quantityType(forIdentifier: .appleWalkingSteadiness)
    }
    
    static func numberOfAlcoholicBeverages() -> HKQuantityType? {
        self.quantityType(forIdentifier: .numberOfAlcoholicBeverages)
    }
}

@available(iOS 16, macOS 13, watchOS 9, *)
public extension HKQuantityType {
    static func appleSleepingWristTemperature() -> HKQuantityType? {
        self.quantityType(forIdentifier: .appleSleepingWristTemperature)
    }
    
    static func atrialFibrillationBurden() -> HKQuantityType? {
        self.quantityType(forIdentifier: .atrialFibrillationBurden)
    }
    
    static func environmentalSoundReduction() -> HKQuantityType? {
        self.quantityType(forIdentifier: .environmentalSoundReduction)
    }
    
    static func runningGroundContactTime() -> HKQuantityType? {
        self.quantityType(forIdentifier: .runningGroundContactTime)
    }
    
    static func runningPower() -> HKQuantityType? {
        self.quantityType(forIdentifier: .runningPower)
    }
    
    static func runningSpeed() -> HKQuantityType? {
        self.quantityType(forIdentifier: .runningSpeed)
    }
    
    static func runningStrideLength() -> HKQuantityType? {
        self.quantityType(forIdentifier: .runningStrideLength)
    }
    
    static func runningVerticalOscillation() -> HKQuantityType? {
        self.quantityType(forIdentifier: .runningVerticalOscillation)
    }
    
    static func underwaterDepth() -> HKQuantityType? {
        self.quantityType(forIdentifier: .underwaterDepth)
    }
    
    static func waterTemperature() -> HKQuantityType? {
        self.quantityType(forIdentifier: .waterTemperature)
    }
}

@available(iOS 17, macOS 14, watchOS 10, *)
public extension HKQuantityType {
    static func cyclingCadence() -> HKQuantityType? {
        self.quantityType(forIdentifier: .cyclingCadence)
    }
    
    static func cyclingFunctionalThresholdPower() -> HKQuantityType? {
        self.quantityType(forIdentifier: .cyclingFunctionalThresholdPower)
    }
    
    static func cyclingPower() -> HKQuantityType? {
        self.quantityType(forIdentifier: .cyclingPower)
    }
    
    static func cyclingSpeed() -> HKQuantityType? {
        self.quantityType(forIdentifier: .cyclingSpeed)
    }
    
    static func physicalEffort() -> HKQuantityType? {
        self.quantityType(forIdentifier: .physicalEffort)
    }
    
    static func timeInDaylight() -> HKQuantityType? {
        self.quantityType(forIdentifier: .timeInDaylight)
    }
}

#endif
