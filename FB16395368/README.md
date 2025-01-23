# Allow third party apps to "donate events" that would then trigger a Shortcut, or pre-programmed behavior

Shortcuts app is an amazing piece of software, allowing users to customize how their phone should behave, and making complicated tasks achievable in a blast thanks to the amazing power of Intents.

Therefore, there is, as of today, behaviors that cannot be achieved: using any third party app "event" as a trigger for a shortcut.

Today, you can, within Shortcuts app, associate shortcuts and actions to specific predefined events:
- When my phone starts charging
- When I turn off my alarm
- At a specific time
- … etc

Wouldn't it be amazing to allow more apps to trigger those kind of behaviors, unlocking a new horizon of possibilities?
- When I send a post on Mastodon, run this shortcut
- When I do this in this app, then do this…

The principle looks a bit like IFTTT (If This Then That), but adapted for the Shortcuts app.

Dev API could inspire from the event donation mechanism from the incredible TipKit, with a bit more context for the Shortcuts app:

```swift
import AppIntents

struct TootPostedEvent: AppEvent {
    static let title: LocalizedStringResource = "When I post a toot on Mastodon"

    // Maybe some custom parameters / settings mechanism?
}
```

Then we could donate it to the system when it's relevant:

```swift
func sendToot() {
    ...
    let event = TootPostedEvent()
    event.donate()
}
```

And voilà!
Wouldn't it be amazing? I'd love it!
