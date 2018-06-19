import Foundation


final class BasicHandler: CoordinationEventHandler {
    typealias Closure = (CoordinationEvent) throws -> Void
    
    let closure: Closure
    
    init(_ closure: @escaping Closure) {
        self.closure = closure
    }
    
    func handle(event: CoordinationEvent) throws {
        try closure(event)
    }
    
}
