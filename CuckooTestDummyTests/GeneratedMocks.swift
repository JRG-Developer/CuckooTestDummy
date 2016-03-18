// MARK: - Mocks generated from file: /Users/Joshua/Documents/Libraries/CuckooTestDummy/CuckooTestDummy/TestDummy.swift at 2016-03-18 18:21:00 +0000

//
//  TestDummy.swift
//  CuckooTestDummy
//
//  Created by Joshua Greene on 3/18/16.
//  Copyright © 2016 JRG-Developer. All rights reserved.
//

import UIKit


import Cuckoo
@testable import CuckooTestDummy

internal class MockTestDummy: TestDummy, Cuckoo.Mock {
    internal let manager: Cuckoo.MockManager<__StubbingProxy_TestDummy, __VerificationProxy_TestDummy> = Cuckoo.MockManager()

    private var observed: TestDummy?

    internal required override init() {
        observed = nil
    }

    internal required init(spyOn victim: TestDummy) {
        observed = victim
    }
    
    internal override func init(name name: String, url: NSURL) {
        return manager.call("init(name:String, url:NSURL)", parameters: (name: name, url: url), original: observed.map { o in return { (name name: String, url: NSURL) in o.init(name: name, url: url) } })(name: name, url: url)
    }
    
    internal override func init(coder aDecoder: NSCoder) {
        return manager.call("init(coder:NSCoder)", parameters: (aDecoder), original: observed.map { o in return { (coder aDecoder: NSCoder) in o.init(coder: aDecoder) } })(aDecoder)
    }
    
    internal override func encodeWithCoder(aCoder: NSCoder) {
        return manager.call("encodeWithCoder(_:NSCoder)", parameters: (aCoder), original: observed.map { o in return { (aCoder: NSCoder) in o.encodeWithCoder(aCoder) } })(aCoder)
    }

    internal struct __StubbingProxy_TestDummy: Cuckoo.StubbingProxy {
        let handler: Cuckoo.StubbingHandler
    
        internal init(handler: Cuckoo.StubbingHandler) {
            self.handler = handler
        }
        
        @warn_unused_result
        internal func init<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable where M1.MatchedType == (String), M2.MatchedType == (NSURL)>(name name: M1, url: M2) -> Cuckoo.ToBeStubbedFunction<(name: String, url: NSURL), Void> {
            let matchers: [Cuckoo.AnyMatcher<(name: String, url: NSURL)>] = [parameterMatcher(name.matcher) { $0.name }, parameterMatcher(url.matcher) { $0.url }]
            return handler.stub("init(name:String, url:NSURL)", parameterMatchers: matchers)
        }
        
        @warn_unused_result
        internal func init<M1: Cuckoo.Matchable where M1.MatchedType == (NSCoder)>(coder aDecoder: M1) -> Cuckoo.ToBeStubbedFunction<(NSCoder), Void> {
            let matchers: [Cuckoo.AnyMatcher<(NSCoder)>] = [parameterMatcher(aDecoder.matcher) { $0 }]
            return handler.stub("init(coder:NSCoder)", parameterMatchers: matchers)
        }
        
        @warn_unused_result
        internal func encodeWithCoder<M1: Cuckoo.Matchable where M1.MatchedType == (NSCoder)>(aCoder: M1) -> Cuckoo.ToBeStubbedFunction<(NSCoder), Void> {
            let matchers: [Cuckoo.AnyMatcher<(NSCoder)>] = [parameterMatcher(aCoder.matcher) { $0 }]
            return handler.stub("encodeWithCoder(_:NSCoder)", parameterMatchers: matchers)
        }
    
    }

    internal struct __VerificationProxy_TestDummy: Cuckoo.VerificationProxy {
        let handler: Cuckoo.VerificationHandler
    
        internal init(handler: Cuckoo.VerificationHandler) {
            self.handler = handler
        }
        
        internal func init<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable where M1.MatchedType == (String), M2.MatchedType == (NSURL)>(name name: M1, url: M2) -> Cuckoo.__DoNotUse<Void>{
            let matchers: [Cuckoo.AnyMatcher<(name: String, url: NSURL)>] = [parameterMatcher(name.matcher) { $0.name }, parameterMatcher(url.matcher) { $0.url }]
            return handler.verify("init(name:String, url:NSURL)", parameterMatchers: matchers)
        }
        
        internal func init<M1: Cuckoo.Matchable where M1.MatchedType == (NSCoder)>(coder aDecoder: M1) -> Cuckoo.__DoNotUse<Void>{
            let matchers: [Cuckoo.AnyMatcher<(NSCoder)>] = [parameterMatcher(aDecoder.matcher) { $0 }]
            return handler.verify("init(coder:NSCoder)", parameterMatchers: matchers)
        }
        
        internal func encodeWithCoder<M1: Cuckoo.Matchable where M1.MatchedType == (NSCoder)>(aCoder: M1) -> Cuckoo.__DoNotUse<Void>{
            let matchers: [Cuckoo.AnyMatcher<(NSCoder)>] = [parameterMatcher(aCoder.matcher) { $0 }]
            return handler.verify("encodeWithCoder(_:NSCoder)", parameterMatchers: matchers)
        }
    
    }
}