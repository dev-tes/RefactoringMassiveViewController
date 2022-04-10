//
//  WebView+LoadString.swift
//  HackingWithSwift
//
//  Created by Tes on 11/03/2022.
//  Copyright © 2022 Hacking with Swift. All rights reserved.
//

import WebKit

extension WKWebView {
    func load(_ urlString: String){
        guard let url = URL(string: urlString) else {
            return
        }

        let request = URLRequest(url: url)
        load(request)
    }
}

