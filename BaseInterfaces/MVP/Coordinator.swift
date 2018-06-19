import Foundation


protocol Coordinator: CoordinationEventHandler {
    func start()
    var eventHandler: CoordinationEventHandler? { get set }
}

extension Coordinator {
    func emit(event: CoordinationEvent) throws {
        try eventHandler?.handle(event: event)
    }
}

extension Coordinator {
    func makeChildCoordinator<C: Coordinator>(factory: () -> C) -> C {
        let childCoordinator = factory()
        let handler = eventHandler ?? self
        childCoordinator.eventHandler = childCoordinator.chained(to: handler)
        return childCoordinator
    }
}
