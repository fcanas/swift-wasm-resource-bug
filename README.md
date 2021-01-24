# swift-wasm-resource-bug

This project explores problems the SwiftWASM toolchain has around resources.

A dependency with a resource fails to have its resources copied by `carton bundle`.  The upstream Swift toolchain works correctly.

This is the output of `carton bundle`:

```
Bundle
├── TopLevelResource.md
├── c78bdf2c8a889c8f.wasm
├── c9143f6becf19317.js
├── index.html
└── swift-wasm-resource-bug_swift-wasm-resource-bug.resources
    └── TopLevelResource.md
```

I see two potential issues:

1. `TopLevelResource.md` appears twice. Once at the root, and once in a resource directory for the module. The specific resource directory seems more correct, as there could be name collisions across modules.
2. `Resource.md` from the `SubPackageWithResource` package is missing entirely.
