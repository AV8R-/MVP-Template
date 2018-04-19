import Swinject

final class ___VARIABLE_moduleName___Assembly: Assembly {

    func assemble(container: Container) {
        container.autoregister(___VARIABLE_moduleName___PresenterProtocol.self, initializer: ___VARIABLE_moduleName___Presenter.init)
            .initCompleted { (r, p) in
                p.view = r.resolve(___VARIABLE_moduleName___ViewProtocol.self)
        }
        container.autoregister(___VARIABLE_moduleName___ViewProtocol.self, initializer: ___VARIABLE_moduleName___View.init(presenter:))
    }

}

