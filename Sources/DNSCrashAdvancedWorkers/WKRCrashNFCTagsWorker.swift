//
//  WKRCrashNFCTagsWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashAdvancedWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2020 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankAdvancedWorkers
import DNSCore
import DNSError
import DNSProtocols
import DNSProtocolsAdvanced
import Foundation

open class WKRCrashNFCTagsWorker: WKRBlankNFCTagsWorker
{
    // MARK: - Business Logic / Single Item CRUD
    override open func doScanTags(for key: String,
                                  with progress: PTCLProgressBlock?,
                                  and block: PTCLNFCTagsBlockVoidArrayNFCNDEFMessage?) throws {
        guard nextWorker != nil else {
            throw DNSError.Protocols
                .notImplemented(DNSCodeLocation.crashAdvancedWorkers(self, "\(#file),\(#line),\(#function)"))
        }
        try nextWorker!.doScanTags(for: key, with: progress, and:block)
    }
}
