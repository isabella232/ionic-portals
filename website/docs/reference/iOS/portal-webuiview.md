---
title: PortalWebUIView
sidebar_label: Portal WebUIView
---

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

The [PortalWebUIView](./portal-webuiview) struct is an iOS [UIViewControllerRepresentable](https://developer.apple.com/documentation/swiftui/uiviewcontrollerrepresentable) that you can use to easily add a [Portal](./portal) with SwiftUI.

In this example, we're getting a [Portal](./portal) instance, then we pass the portal to [PortalWebUIView](./portal-webuiview) to render it:


```swift title=ContentView.swift
struct ContentView: View {
    var portal = PortalManager.getPortal("MY_FIRST_PORTAL")
    
    var body: some View {
        VStack {
            PortalUIWebView(self.portal)
        }
    }
}
```

See our [getting started guide](../../getting-started/iOS#using-the-portalwebview) for more information on this approach.

### Constructors

### constructor

#### Usage 
 
```swift
let portal: Portal = somePortal
let portalWebUIView: PortalWebUIView = PortalWebUIView(portal)
``` 

#### Parameters

Name | Type | Description
:------ | :------ | :------
`_` | [Portal](./portal) | The [Portal](./portal) to show when in the WebView.