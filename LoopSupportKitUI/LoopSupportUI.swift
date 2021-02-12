//
//  LoopSupportUI.swift
//  LoopSupportKitUI
//
//  Created by Darin Krauss on 1/23/21.
//  Copyright © 2021 LoopKit Authors. All rights reserved.
//

import Foundation
import SwiftUI
import LoopKitUI
import LoopSupportKit

public final class LoopSupportUI: SupportUI {
    public let supportIdentifier = "LoopSupport"

    public init() {}

    public func supportMenuItem(supportInfoProvider: SupportInfoProvider, urlHandler: @escaping (URL) -> Void) -> AnyView? {
        return AnyView(Button("Submit Bug Report", action: {
            let url = URL(string: "https://github.com/LoopKit/Loop/issues")!
            urlHandler(url)
        }))
    }
}
