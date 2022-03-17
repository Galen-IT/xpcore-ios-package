import Foundation
@_exported import GalenIT_CoreSDK
@_exported import galenit_device_api

public struct MyHelper {
    public static func timestamp(_ date: Date) -> Int64 {
        date.toMillis
    }
}
