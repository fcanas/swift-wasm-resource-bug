# SubPackageWithResource

This is a separate package in the same repository as the root project. A dependency with a resource fails to compile because the  `Bundle.module` doesn't seem to be generated when built with the siwftwasm toolchain. The upstream Swift toolchain works correctly.

##Swift WASM Error
```
ERROR   value of type 'Bundle' has no member 'url'
4 |      let url: URL = Bundle.module.url(forResource: "Resource", withExtension: "md")!
```
