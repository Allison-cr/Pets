import Foundation
import SwiftUI

// MARK: - PetViewModel

class PetViewModel: ObservableObject {
    @Published var petModels: [PetModel]
    
    init(petModels: [PetModel]) {
        self.petModels = petModels
    }
}

