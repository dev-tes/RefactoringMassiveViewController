//
//  NavigationDelegate.swift
//  HackingWithSwift
//
//  Created by Tes on 11/03/2022.
//  Copyright © 2022 Hacking with Swift. All rights reserved.
//

import UIKit
import WebKit

class NavigationDelegate: NSObject, WKNavigationDelegate {
    
    let allowedSites = ["apple.com", "hackingwithswift.com"]
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        if let host = navigationAction.request.url?.host {
            if allowedSites.contains(where: host.contains) {
                decisionHandler(.allow)
                return
            } else {
                print("Disallowed invalid site: \(host).")
            }
        }

        decisionHandler(.cancel)
    }
}
