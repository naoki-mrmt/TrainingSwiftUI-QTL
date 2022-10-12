# Task1
> - アプリのライフサイクルを理解しよう
> - ライフサイクルの関数ごとにログをコンソール出力する（print文）
> - 好きなライブラリを使ってコンソール出力していた文言をトースト表示する

## ライフサイクルについてのメモ
### Viewのライフサイクル
```swift
extension View {

    /// Adds an action to perform before this view appears.
    ///
    /// The exact moment that SwiftUI calls this method
    /// depends on the specific view type that you apply it to, but
    /// the `action` closure completes before the first
    /// rendered frame appears.
    ///
    /// - Parameter action: The action to perform. If `action` is `nil`, the
    ///   call has no effect.
    ///
    /// - Returns: A view that triggers `action` before it appears.
    @inlinable public func onAppear(perform action: (() -> Void)? = nil) -> some View


    /// Adds an action to perform after this view disappears.
    ///
    /// The exact moment that SwiftUI calls this method
    /// depends on the specific view type that you apply it to, but
    /// the `action` closure doesn't execute until the view
    /// disappears from the interface.
    ///
    /// - Parameter action: The action to perform. If `action` is `nil`, the
    ///   call has no effect.
    ///
    /// - Returns: A view that triggers `action` after it disappears.
    @inlinable public func onDisappear(perform action: (() -> Void)? = nil) -> some View

}
```
