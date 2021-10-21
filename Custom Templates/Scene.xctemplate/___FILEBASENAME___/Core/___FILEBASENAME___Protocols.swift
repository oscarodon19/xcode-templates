//___FILEHEADER___

protocol ___VARIABLE_productName:identifier___ViewProtocol: AnyObject {
    /// Setup a view with a given view model that the view needs to be renderized
    /// - Parameter viewModel: A valid ___VARIABLE_productName:identifier___ViewModel that the view need's to be renderized
    func setupView(with viewModel: ___VARIABLE_productName:identifier___ViewModel)
}

protocol ___VARIABLE_productName:identifier___PresenterProtocol {
    /// The view that is associated to the presenter
    var view: ___VARIABLE_productName:identifier___ViewProtocol? { get set }

    /// Notifies that the view is ready and is waiting to present the initial data
    func viewIsReady()
}

protocol ___VARIABLE_productName:identifier___InteractorProtocol {
    /// Fetch the data required. It can return the data model in a closure and in case of failure it will return an error closure.
    /// - Parameters:
    ///   - success: A closure that is going to be executed in case the fetch succeed
    ///   - failure: An error closure to manage the errors
    func fetch(success: @escaping (___VARIABLE_productName:identifier___DTO) -> Void, failure: @escaping (Error?) -> Void)
}

protocol ___VARIABLE_productName:identifier___DatasourceProtocol {
    /// Fetch the data required. It can return the data model in a closure and in case of failure it will return an error closure.
    /// - Parameters:
    ///   - success: A closure that is going to be executed in case the fetch succeed
    ///   - failure: An error closure to manage the errors
    func fetch(success: @escaping (___VARIABLE_productName:identifier___DTO) -> Void, failure: @escaping (Error?) -> Void)
}

protocol ___VARIABLE_productName:identifier___ViewModelMapperProtocol {
    /// Map a valid ___VARIABLE_productName:identifier___ViewModelDTO to a ___VARIABLE_productName:identifier___ViewModelViewModel
    /// - Parameter dto: A valid instance of ___VARIABLE_productName:identifier___ViewModelDTO
    func map(from dto: ___VARIABLE_productName:identifier___DTO) -> ___VARIABLE_productName:identifier___ViewModel
}