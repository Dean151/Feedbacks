# CoreTransferable ProxyRepresentation should allow asynchronous exporter

On iOS 16, when CoreTransferable was introduced, the following code was valid:
```swift
// iOS 16 — all good
extension Foo: Transferable {
    static var transferRepresentation: some TransferRepresentation {
        ProxyRepresentation(exporting: { foo in
            await foo.bar
        }, importing: { bar in
            Foo(bar)
        })
    }
}
```

Therefore, this asynchronous initializer was deprecated with iOS 17 release:
```swift
// iOS 17 — deprecated :(
extension Foo: Transferable {
    static var transferRepresentation: some TransferRepresentation {
        // 'init(exporting:importing:)' was deprecated in iOS 17.0: A synchronous exporter should be used instead.
        ProxyRepresentation(exporting: { foo in
            await foo.bar
        }, importing: { bar in
            Foo(bar)
        })
    }
}
```

---

With iOS 18 though, Transferable support for AppEntity was introduced, bringing a lot of flexibility and power to interface with the system.
Therefore, it is **very** likely that we'd like to use a asynchronous context to load relevant data from an `AppEntity`, that is just a minimal representation of the full entity by design.

Therefore, this deprecated method would be very handy … **if it wasn't deprecated**
```swift
// iOS 18 — Transferable on AppEntity
struct FooEntity: AppEntity {
    ...
}

extension FooEntity: Transferable {
    static var transferRepresentation: some TransferRepresentation {
        // 'init(exporting:importing:)' was deprecated in iOS 17.0: A synchronous exporter should be used instead.
        ProxyRepresentation(exporting: { entity in
            // This would allow to expose the full Foo type to the system … but loading it requires await!
            await entity.foo
        }, importing: { foo in
            FooEntity(foo)
        })
    }
}
```

---

As a developer, I'd expect this initializer **NOT** to be deprecated. Therefore, maybe I am missing something?
Thanks!
