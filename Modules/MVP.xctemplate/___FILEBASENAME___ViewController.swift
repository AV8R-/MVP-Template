import UIKit

final class ___VARIABLE_moduleName___ViewController: UIViewController {
    var presenter: ___VARIABLE_moduleName___PresenterProtocol

    init(presenter: ___VARIABLE_moduleName___PresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("Storyboards are incompatible with truth and beauty.")
    }
}

extension ___VARIABLE_moduleName___View: ___VARIABLE_moduleName___ViewProtocol {

}
