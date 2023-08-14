import Foundation
import SwiftUI

// MARK: - DetailScreen

struct DetailedScreenView: View {
    
    // MARK: - Properties
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    let pet: PetModel
    @ObservedObject var viewModel: DetailedScreenViewModel  //+ вью модель. Внутри вью модели обработка кнопок, + инфа из модели
    // MARK: View
    
    var body: some View {
        ZStack {
            Color("background")
                .ignoresSafeArea()
            ScrollView {
                VStack {
                    TopImage(pet: pet)
                    VStack(spacing: 0) {
                        FirstInfoDetailView (
                            petName: pet.name,
                            petDistance: pet.distance,
                            timeAgo: pet.timeago,
                            gender: pet.gender
                        )
                       SecondInfoDetailView(pet: pet)
                       QuickInfoView(pet: pet)
                       OwnerInfo(pet: pet)
                    }
                }
                .ignoresSafeArea()
            }
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(
            leading: CustomBackButtonView(
                action: {
                    presentationMode.wrappedValue.dismiss()
                    
                }
            ),
            trailing: Image(systemName: "heart.fill")
                .foregroundColor(.white)
        )
    }
    
    struct DetailScreen_Previews: PreviewProvider {
        static var previews: some View {
            Group {
    //            DetailedScreen(pet: PetModel.mock.first!)
    //            DetailedScreen(pet: PetModel.mock.last!)

            }
        }
    }

    
    // MARK: - FirstInfoDetailView
    
    private struct FirstInfoDetailView: View {
        
        @State var petName: String
        @State var petDistance: Int
        @State var timeAgo: Int
        @State var gender: GenderType
        
        var body: some View {
            HStack {
                VStack(alignment: .leading) {
                    Text(petName)
                        .font(.system(size: 24,weight: .bold))
                        .padding(.leading, 25)
                        .padding(.top, 36)
                    HStack {
                        Image("Pin")
                            .padding(.leading, 25)
                        Text("\(petDistance)m away")
                            .font(.system(size: 12))
                            .foregroundColor(Color("text_distance"))
                    }
                    Text("\(timeAgo) min ago")
                        .font(.system(size: 12))
                        .foregroundColor(Color("text_distance"))
                        .padding(.leading, 27)
                }
                Spacer()
                GenderBadgeView(genderType: gender)
                    .padding(.trailing, 37.5)
            }
        }
    }
    
    // MARK: - SecondInfoDetailView
    
    private struct SecondInfoDetailView: View {
        let pet: PetModel
        var body: some View {
            VStack(alignment: .leading){
                Text("My Story")
                    .foregroundColor(Color("text_info"))
                    .font(.system(size: 16,weight: .bold))
                    .padding(.leading, 25)
                    .padding(.top, 37)
                Text(pet.description) /// в модель
                    .foregroundColor(Color("text_info")) /// другое подчеркивание
                    .font(.system(size: 14))
                    .padding(.leading, 25)
                    .padding(.trailing, 34)
            }
        }
    }
    
    // MARK: - QuickInfoView
    
    private struct QuickInfoView: View {
        let pet: PetModel
        var body: some View {
            VStack(alignment: .leading){
                Text("Quick Info")
                    .font(.system(size: 16, weight: .bold))
                    .padding(.leading, 27)
                    .padding(.top, 36)
                HStack{
                    CustomQuickInfo(quickInfo: .age,text: "\(pet.age)")
                        .padding(.horizontal, 24)
                    CustomQuickInfo(quickInfo: .color,text: "\(pet.colorPet)")
                    CustomQuickInfo(quickInfo: .weight,text: "\(pet.weight)")
                        .padding(.horizontal, 24)
                }
            }
        }
    }
    
    // MARK: - OwnerInfo
    
    private struct OwnerInfo: View {
        let pet: PetModel
        var body: some View {
            VStack(alignment: .leading){
                Text("Owner info")
                    .font(.system(size: 16,weight: .bold))
                    .padding(.top, 36)
                    .padding(.trailing, 14)
                HStack{
                    Image("Owner")
                        .resizable()
                        .frame(width: 60,height: 60)
                        .clipShape(Circle())
                    VStack(alignment: .leading){
                        Text("David Berlin")
                            .foregroundColor(Color("name_owner"))
                            .font(.system(size: 14,weight: .medium))
                            .padding(.bottom, 10)
                        Text("Socialist & Developer")
                            .font(.system(size: 12))
                            .foregroundColor(Color("text_owner_info"))
                    }
                    Spacer()
                    Button(action: {
                        // viewModel.chatButtonTapped
                    }) {
                        Image("Group") // group
                            .resizable()
                            .frame(width: 14.28, height: 14.28)
                            .padding(12.86)
                            .background(Color("Male"))
                            .clipShape(Circle())
                    }
                }
                .padding(.trailing, 47)
                Button(action: {
                    //
                }) {
                    Text("Adopt me")
                        .font(.system(size: 16,weight: .medium))
                        .padding(.vertical, 16)
                        .padding(.horizontal, 120)
                        .foregroundColor(.white)
                        .background(Color("Male"))
                        .CustomCorner(8)
                }
                .padding(.top, 56)
            }
            .padding(.leading, 26)
        }
    }
    
    // MARK: - TopImage
    
    private struct TopImage: View {
        let pet: PetModel
        var body: some View {
            ZStack {
                ImageView(url: pet.imageName)
                //                .resizable()
                //                .scaledToFit()
            }
        }
    }
    
}

