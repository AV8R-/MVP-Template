import UIKit

protocol ViewControllerProtocol {
    var controller: UIViewController { get }
}

extension ViewControllerProtocol where Self: UIViewController {
    var controller: UIViewController {
        return self
    }
}
