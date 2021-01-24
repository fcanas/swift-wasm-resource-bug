import Foundation

public func pathToResource() -> String {
    return Bundle.module.path(forResource: "Resource", ofType: "md")!
}
