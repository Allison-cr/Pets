import SwiftUI
import Foundation

// MARK: - PetContentView

struct PetContentView: View {
    
   @ObservedObject var viewModel: PetViewModel
   //@State private var petmodels = PetModel.mock
    var body: some View {
        NavigationView{
            ZStack {
                Color("first_background")
                    .ignoresSafeArea()
                ScrollView (.vertical,showsIndicators: false){
                    FirstInfo()
                    VStack(spacing: 0){
                        ForEach(viewModel.petModels) { petmodel in
                            NavigationLink(
                                destination: DetailedScreen(pet: petmodel, viewModel: DetailedScreenViewModel(pet: petmodel))
                            ) {
                                PetCard(pet: petmodel)
                                    .padding(.bottom, 12)
                            }
                        }
                    }
                }.foregroundColor(.black)
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //PetContentView(viewModel: PetViewModel(petmodel: PetModel.mock))
        PetContentView(viewModel: PetViewModel(petModels: PetModel.mock))
    }
}

// MARK: - FirstInfo

struct FirstInfo: View {
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 0) {
                Text("Hey Spikey,")
                    .font(.system(size: 24,weight: .bold))
                Text("Adopt a new friend near you!")
                    .font(.system(size: 16))
                    .padding(.top, 4)
                Text("Nearby results")
                    .padding(.top , 35)
                    .padding(.bottom, 20)
                    .font(.system(size: 14,weight: .bold))
            }
            .padding(.leading, 19)
            .padding(.top, 47)
            .foregroundColor(Color("Text"))
            Spacer()
            Image("Icon-2")
                .font(.system(size: 24))
                .padding(.trailing, 45)
                .padding(.top,53)
        }
    }
}

// MARK: - PetCards

struct PetCard: View {
    let pet: PetModel
    var body: some View {
        HStack{
            ImageView(url: pet.imageName)
            VStack(spacing: 0) {
                HStack {
                    Text(pet.name)
                        .font(.system(size: 16,weight: .medium))
                        .padding(.top, 22)
                    Spacer()
                    GenderBadgeView(genderType: pet.gender)
                        .padding(.top, 18)
                        .padding(.trailing, 19.5)
                }
                    HStack(spacing: 0){
                        let formattedString = String(format: "%.1f", pet.age)
                        Text(formattedString)
                        Text("|")
                            .padding(.horizontal, 5)
                        ReturnCharacter(character: pet.character)
                        Spacer()
                    }
                    .padding(.top,9)
                    .padding(.bottom,17)
                    .font(.system(size: 12))
                    .foregroundColor(Color("secondinfo"))
                HStack{
                    Image("Pin")
                    Text("\(pet.distance)m away")
                        .font(.system(size: 12))
                    Spacer()
                    Text("\(pet.timeago) min ago")
                        .font(.system(size: 12))
                        .padding(.trailing,20)
                }
                .foregroundColor(Color("secondinfo"))
                .padding(.bottom, 22)
            }
            .padding(.leading,12)
        }
        .background(.white)
        .CustomCorner(16)
        .padding(.horizontal,12)
    }
}
