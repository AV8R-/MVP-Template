import Foundation


protocol CoordinationEventHandler: class {
    func handle(event: CoordinationEvent, chainingTo next: CoordinationEventHandler?) throws
    func handle(event: CoordinationEvent) throws
}

extension CoordinationEventHandler {
    func handle(event: CoordinationEvent, chainingTo next: CoordinationEventHandler?) throws {
        try next?.handle(event: event)
    }
    
    func handle(event: CoordinationEvent) throws {
        try handle(event: event, chainingTo: nil)
    }
    
    func chained(to next: CoordinationEventHandler) -> CoordinationEventHandler {
        return BasicHandler { [unowned next] event in
            try self.handle(event: event, chainingTo: next)
        }
    }
}
