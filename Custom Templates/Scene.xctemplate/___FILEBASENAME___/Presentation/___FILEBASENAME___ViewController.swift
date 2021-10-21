//___FILEHEADER___

import UIKit

class ___VARIABLE_productName:identifier___ViewController: UIViewController {
    private var viewModel: ___VARIABLE_productName:identifier___ViewModel?
    private var presenter: ___VARIABLE_productName:identifier___PresenterProtocol
    
    init(presenter: ___VARIABLE_productName:identifier___PresenterProtocol = ___VARIABLE_productName:identifier___Presenter()) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
        self.presenter.view = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        presenter.viewIsReady()
    }
}

extension ___VARIABLE_productName:identifier___ViewController: ___VARIABLE_productName:identifier___ViewProtocol {
    public func setupView(with viewModel: ___VARIABLE_productName:identifier___ViewModel) {
        // Setup view
    }
}
