import Foundation
import SubPackageWithResource

print("dependency resource path: " + SubPackageWithResource.pathToResource())

print("top level resource path: " + Bundle.module.path(forResource: "TopLevelResource", ofType: "md")!)

