//___FILEHEADER___

import Foundation

class ___VARIABLE_productName:identifier___Presenter: ___VARIABLE_productName:identifier___PresenterProtocol {
    private let interactor: ___VARIABLE_productName:identifier___InteractorProtocol
    private let mapper: ___VARIABLE_productName:identifier___ViewModelMapperProtocol
    weak var view: ___VARIABLE_productName:identifier___ViewProtocol?
    
    init(
        interactor: ___VARIABLE_productName:identifier___InteractorProtocol = ___VARIABLE_productName:identifier___Interactor(),
        mapper: BenefitDetailViewModelMapperProtocol = ___VARIABLE_productName:identifier___ViewModelMapper()
    ) {
        self.interactor = interactor
        self.mapper = mapper
    }
        
    func viewIsReady() {
        view?.displayLoading()
        
        interactor.fetch { [weak self] (dto) in
            guard let self = self else { return }
            self.view?.dismissLoading()
            let viewModel = self.mapper.map(from: dto)
            self.view?.setupView(with: viewModel)
        } failure: { [weak self] (error) in
            guard let self = self else { return }
            self.view?.dismissLoading()
            // Do something with the error
        }
    }
}