//___FILEHEADER___

import Foundation

class ___VARIABLE_productName:identifier___Interactor: ___VARIABLE_productName:identifier___InteractorProtocol {
    private let datasource: ___VARIABLE_productName:identifier___DatasourceProtocol
    
    init(datasource: ___VARIABLE_productName:identifier___DatasourceProtocol) {
        self.datasource = datasource
    }
    
    func fetch(success: @escaping (___VARIABLE_productName:identifier___DTO) -> Void, failure: @escaping ( Error?) -> Void) {
        datasource.fetch { (dto) in
            success(dto)
        } failure: { (error) in
            failure(error)
        }
    }
}