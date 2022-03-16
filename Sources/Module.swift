@_exported import galenit_device_api


public struct Helper {
    public var hello: String { "hello" }
    
    public func initCore(key: String) {
        let res = GalenIT.shared.start(token: key)
        print(res)
    }
}
