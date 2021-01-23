import Foundation

public func contentsOfResource() -> String {
    let url: URL = Bundle.module.url(forResource: "Resource", withExtension: "md")!
    let data: Data = try! Data(contentsOf: url)
    return String(data: data, encoding: .utf8)!
}
