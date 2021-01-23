# swift-wasm-resource-bug

This project demonstrates a problem witht he SwiftWASM toolchain. A dependency with a resource fails to compile because the  `Bundle.module` doesn't seem to be generated when built with the SwiftWASM toolchain. The upstream Swift toolchain works correctly.

## Correct output when run with Apple toolchain
```
#  Resource

I am a sample resource in the `SubPackageWithResource` package.
```

## Error when build with Swift WASM toolchain
```
ERROR   value of type 'Bundle' has no member 'url'
4 |      let url: URL = Bundle.module.url(forResource: "Resource", withExtension: "md")!
```

