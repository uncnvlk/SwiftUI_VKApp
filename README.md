# VK

This app is the analog of the VK written on SwiftUI.

## About development

XCode 13.2.1\
[SwiftUI](https://developer.apple.com/xcode/swiftui/) is a new framework used for creating this application. 

## Screenshots
 __Log In__ screen 
![](https://github.com/uncnvlk/SwiftUI_VKApp/blob/master/images/logIn.png?raw=true)

__Friends' list__
![logIn](https://github.com/uncnvlk/SwiftUI_VKApp/blob/master/images/FriendsList.png?raw=true)


## Code

### ViewModifier
```swift
import SwiftUI

struct CircleShadow: ViewModifier {
    let shadowColor: Color
    let shadowRadius: CGFloat
    
    func body(content: Content) -> some View {
        content
            .background(Circle()
                .fill(Color.white)
                .shadow(color: shadowColor, radius: shadowRadius))
    }
}

```

## Contacts
[GitHub](https://github.com/uncnvlk)
[Telegram](https://t.me/lisa_exe)
