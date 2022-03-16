import Foundation
import GalenIT_CoreSDK

public struct MyHelper {
    public func timestamp(_ date: Date) -> Int64 {
        date.toMillis
    }
}
