#if !os(macOS)
import SwiftUI

public extension UIDevice {
    static let modelName: String = {
        var systemInfo = utsname()
        uname(&systemInfo)
        
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else {
                return identifier
            }
            
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        
        func mapToDevice(identifier: String) -> String { // swiftlint:disable:this cyclomatic_complexity
#if os(iOS)
            switch identifier {
            case "iPod5,1":                                       "iPod touch (5th generation)"
            case "iPod7,1":                                       "iPod touch (6th generation)"
            case "iPod9,1":                                       "iPod touch (7th generation)"
            case "iPhone3,1", "iPhone3,2", "iPhone3,3":           "iPhone 4"
            case "iPhone4,1":                                     "iPhone 4s"
            case "iPhone5,1", "iPhone5,2":                        "iPhone 5"
            case "iPhone5,3", "iPhone5,4":                        "iPhone 5c"
            case "iPhone6,1", "iPhone6,2":                        "iPhone 5s"
            case "iPhone7,2":                                     "iPhone 6"
            case "iPhone7,1":                                     "iPhone 6 Plus"
            case "iPhone8,1":                                     "iPhone 6s"
            case "iPhone8,2":                                     "iPhone 6s Plus"
            case "iPhone9,1", "iPhone9,3":                        "iPhone 7"
            case "iPhone9,2", "iPhone9,4":                        "iPhone 7 Plus"
            case "iPhone10,1", "iPhone10,4":                      "iPhone 8"
            case "iPhone10,2", "iPhone10,5":                      "iPhone 8 Plus"
            case "iPhone10,3", "iPhone10,6":                      "iPhone X"
            case "iPhone11,2":                                    "iPhone XS"
            case "iPhone11,4", "iPhone11,6":                      "iPhone XS Max"
            case "iPhone11,8":                                    "iPhone XR"
            case "iPhone12,1":                                    "iPhone 11"
            case "iPhone12,3":                                    "iPhone 11 Pro"
            case "iPhone12,5":                                    "iPhone 11 Pro Max"
            case "iPhone13,1":                                    "iPhone 12 mini"
            case "iPhone13,2":                                    "iPhone 12"
            case "iPhone13,3":                                    "iPhone 12 Pro"
            case "iPhone13,4":                                    "iPhone 12 Pro Max"
            case "iPhone14,4":                                    "iPhone 13 mini"
            case "iPhone14,5":                                    "iPhone 13"
            case "iPhone14,2":                                    "iPhone 13 Pro"
            case "iPhone14,3":                                    "iPhone 13 Pro Max"
            case "iPhone14,7":                                    "iPhone 14"
            case "iPhone14,8":                                    "iPhone 14 Plus"
            case "iPhone15,2":                                    "iPhone 14 Pro"
            case "iPhone15,3":                                    "iPhone 14 Pro Max"
            case "iPhone15,4":                                    "iPhone 15"
            case "iPhone15,5":                                    "iPhone 15 Plus"
            case "iPhone16,1":                                    "iPhone 15 Pro"
            case "iPhone16,2":                                    "iPhone 15 Pro Max"
            case "iPhone8,4":                                     "iPhone SE"
            case "iPhone12,8":                                    "iPhone SE (2nd generation)"
            case "iPhone14,6":                                    "iPhone SE (3rd generation)"
            case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4":      "iPad 2"
            case "iPad3,1", "iPad3,2", "iPad3,3":                 "iPad (3rd generation)"
            case "iPad3,4", "iPad3,5", "iPad3,6":                 "iPad (4th generation)"
            case "iPad6,11", "iPad6,12":                          "iPad (5th generation)"
            case "iPad7,5", "iPad7,6":                            "iPad (6th generation)"
            case "iPad7,11", "iPad7,12":                          "iPad (7th generation)"
            case "iPad11,6", "iPad11,7":                          "iPad (8th generation)"
            case "iPad12,1", "iPad12,2":                          "iPad (9th generation)"
            case "iPad13,18", "iPad13,19":                        "iPad (10th generation)"
            case "iPad4,1", "iPad4,2", "iPad4,3":                 "iPad Air"
            case "iPad5,3", "iPad5,4":                            "iPad Air 2"
            case "iPad11,3", "iPad11,4":                          "iPad Air (3rd generation)"
            case "iPad13,1", "iPad13,2":                          "iPad Air (4th generation)"
            case "iPad13,16", "iPad13,17":                        "iPad Air (5th generation)"
            case "iPad2,5", "iPad2,6", "iPad2,7":                 "iPad mini"
            case "iPad4,4", "iPad4,5", "iPad4,6":                 "iPad mini 2"
            case "iPad4,7", "iPad4,8", "iPad4,9":                 "iPad mini 3"
            case "iPad5,1", "iPad5,2":                            "iPad mini 4"
            case "iPad11,1", "iPad11,2":                          "iPad mini (5th generation)"
            case "iPad14,1", "iPad14,2":                          "iPad mini (6th generation)"
            case "iPad6,3", "iPad6,4":                            "iPad Pro (9.7-inch)"
            case "iPad7,3", "iPad7,4":                            "iPad Pro (10.5-inch)"
            case "iPad8,1", "iPad8,2", "iPad8,3", "iPad8,4":      "iPad Pro (11-inch) (1st generation)"
            case "iPad8,9", "iPad8,10":                           "iPad Pro (11-inch) (2nd generation)"
            case "iPad13,4", "iPad13,5", "iPad13,6", "iPad13,7":  "iPad Pro (11-inch) (3rd generation)"
            case "iPad14,3", "iPad14,4":                          "iPad Pro (11-inch) (4th generation)"
            case "iPad6,7", "iPad6,8":                            "iPad Pro (12.9-inch) (1st generation)"
            case "iPad7,1", "iPad7,2":                            "iPad Pro (12.9-inch) (2nd generation)"
            case "iPad8,5", "iPad8,6", "iPad8,7", "iPad8,8":      "iPad Pro (12.9-inch) (3rd generation)"
            case "iPad8,11", "iPad8,12":                          "iPad Pro (12.9-inch) (4th generation)"
            case "iPad13,8", "iPad13,9", "iPad13,10", "iPad13,11":"iPad Pro (12.9-inch) (5th generation)"
            case "iPad14,5", "iPad14,6":                          "iPad Pro (12.9-inch) (6th generation)"
            case "AppleTV5,3":                                    "Apple TV"
            case "AppleTV6,2":                                    "Apple TV 4K"
            case "AudioAccessory1,1":                             "HomePod"
            case "AudioAccessory5,1":                             "HomePod mini"
            case "i386", "x86_64", "arm64":                       "Simulator \(mapToDevice(identifier: ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] ?? "iOS"))"
            default:                                              identifier
            }
#elseif os(tvOS)
            switch identifier {
            case "AppleTV5,3":      "Apple TV 4"
            case "AppleTV6,2":      "Apple TV 4K"
            case "i386", "x86_64":  "Simulator \(mapToDevice(identifier: ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] ?? "tvOS"))"
            default:                identifier
            }
#endif
        }
        
        return mapToDevice(identifier: identifier)
    }()
}
#endif
