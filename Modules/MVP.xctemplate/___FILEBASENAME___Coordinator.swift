import UIKit
import protocol Swinject.Resolver

final class ___VARIABLE_moduleName___Coordinator: Coordinator {

    private let resolver: Resolver
    var eventHandler: CoordinationEventHandler?

    init(resolver: Resolver) {
        self.resolver = resolver
    }

    func start() {
        let view = resolver.resolve(___VARIABLE_moduleName___ViewProtocol.self)!
        view.presenter.delegate = self
    }

}

extension ___VARIABLE_moduleName___Coordinator: ___VARIABLE_moduleName___PresenterDelegate {
    
}

