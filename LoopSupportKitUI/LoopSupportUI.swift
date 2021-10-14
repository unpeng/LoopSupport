//
//  LoopSupportUI.swift
//  LoopSupportKitUI
//
//  Created by Darin Krauss on 1/23/21.
//  Copyright © 2021 LoopKit Authors. All rights reserved.
//

import Foundation
import SwiftUI
import LoopKit
import LoopKitUI
import LoopSupportKit

public final class LoopSupportUI: SupportUI {
    public static var supportIdentifier: String = "LoopSupportUI"
    
    public func checkVersion(bundleIdentifier: String, currentVersion: String, completion: @escaping (Result<VersionUpdate?, Error>) -> Void) { }
    
    public func setAlertIssuer(alertIssuer: AlertIssuer?) { }
    
    public func softwareUpdateView(guidanceColors: GuidanceColors, bundleIdentifier: String, currentVersion: String, openAppStoreHook: (() -> Void)?) -> AnyView? { nil }
    
    public init?(rawState: RawStateValue) {
        self.rawState = rawState
    }
    
    public var rawState: RawStateValue
    
    public init() {
        rawState = [:]
    }

    public func supportMenuItem(supportInfoProvider: SupportInfoProvider, urlHandler: @escaping (URL) -> Void) -> AnyView? {
        return AnyView(Button("Submit Bug Report", action: {
            let url = URL(string: "https://github.com/LoopKit/Loop/issues")!
            urlHandler(url)
        }))
    }
}
