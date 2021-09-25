//
//  DNSCrashAdvancedWorkersCodeLocation.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCore
//
//  Created by Darren Ehlers.
//  Copyright © 2020 - 2016 DoubleNode.com. All rights reserved.
//

import DNSError

public extension DNSCodeLocation {
    typealias crashAdvancedWorkers = DNSCrashAdvancedWorkersCodeLocation
}
open class DNSCrashAdvancedWorkersCodeLocation: DNSCodeLocation {
    override open class var domainPreface: String { "com.doublenode.crashAdvancedWorkers." }
}
