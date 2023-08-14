import Foundation

// MARK: - PetModel

struct PetModel:Identifiable {
    
    // MARK: - Properties
    
    /// The iID of 'Pet"
    let id = UUID()
    
    /// The name of 'Pet"
    let name : String
    
    /// The image of 'Pet"
    let imageName : String
    
    /// The gender of 'Pet"
    let gender : GenderType
    
    /// The description of 'Pet"
    let description : String
    
    /// The age of 'Pet"
    let age : String
    
    /// The color of 'Pet"
    let color : String
    
    /// The weight of 'Pet"
    let weight : String
    
    /// The type of 'Pet"
    let type : String
    
    /// The distance of 'Pet"
    let distance : String
    
    /// The minutes ago account of 'Pet"
    let minAgo: String
}

//MARK: - Mock

extension PetModel {
    static let mock = [
        PetModel(
            name: "Parkinson",
            imageName: "https://i.pinimg.com/originals/64/2c/e9/642ce9dd1b300afbb3f15ed5dba3aa37.png",
            gender: .male,
            description: "The dog is a pet animal. A dog has sharp teeth so that it can eat flesh very easily, it has four legs, two ears, two eyes, a tail, a mouth, and a nose. It is a very clever animal and is very useful in catching thieves. It runs very fast, barks loudly and attacks the strangers.",
            age: "1.4",
            color: "Brown",
            weight: "14 kg",
            type: "Playful",
            distance: "37m away",
            minAgo: "12 min ago"
        ),
        PetModel(
            name: "Raul",
            imageName: "https://i.pinimg.com/originals/a9/8c/b5/a98cb5da4b65a65630a1228eb3447668.png",
            gender: .male,
            description: "The dog is a pet animal. A dog has sharp teeth so that it can eat flesh very easily, it has four legs, two ears, two eyes, a tail, a mouth, and a nose. It is a very clever animal and is very useful in catching thieves. It runs very fast, barks loudly and attacks the strangers.",
            age: "2.7",
            color: "Brown",
            weight: "12 kg",
            type: "Playful",
            distance: "381m away",
            minAgo: "23 min ago"
        ),
         PetModel(
            name: "Ernest",
            imageName: "https://i.pinimg.com/originals/7b/3b/87/7b3b870b2db7114637ea64c32d4b9ad7.png",
            gender: .female,
            description: "The dog is a pet animal. A dog has sharp teeth so that it can eat flesh very easily, it has four legs, two ears, two eyes, a tail, a mouth, and a nose. It is a very clever animal and is very useful in catching thieves. It runs very fast, barks loudly and attacks the strangers.",
            age: "1.6",
            color: "Black",
            weight: "15 kg",
            type: "Playful",
            distance: "38m away",
            minAgo: "32 min ago"
         ),
         PetModel(
            name: "Evgenui",
            imageName: "https://i.pinimg.com/originals/21/bc/c2/21bcc226fd2e90e2b850aa86d9ac213c.jpg",
            gender: .male,
            description: "The dog is a pet animal. A dog has sharp teeth so that it can, eat flesh very easily, it has four legs, two ears, two eyes, a tail, a mouth, and a nose. It is a very clever animal and is very useful in catching thieves. It runs very fast, barks loudly and attacks the strangers.",
            age: "0.8",
            color: "White",
            weight: "16 kg",
            type: "Playful",
            distance: "52m away",
            minAgo: "43 min ago"
         ),
         PetModel(
            name: "Andrew",
            imageName: "https://i.pinimg.com/originals/87/85/eb/8785eb70611ef258f47e6ea5a2f26245.jpg",
            gender: .female,
            description: "The dog is a pet animal. A dog has sharp teeth so that it can eat flesh very easily, it has four legs, two ears, two eyes, a tail, a mouth, and a nose. It is a very clever animal and is very useful in catching thieves. It runs very fast, barks loudly and attacks the strangers.",
            age: "1.9",
            color: "White",
            weight: "21 kg",
            type: "Playful",
            distance: "65m away",
            minAgo: "4 min ago"
         ),
         PetModel(
            name: "Rawid",
            imageName: "https://i.pinimg.com/originals/7b/3b/87/7b3b870b2db7114637ea64c32d4b9ad7.png",
            gender: .female,
            description: "The dog is a pet animal. A dog has sharp teeth so that it can eat flesh very easily, it has four legs, two ears, two eyes, a tail, a mouth, and a nose. It is a very clever animal and is very useful in catching thieves. It runs very fast, barks loudly and attacks the strangers.",
            age: "3.2",
            color: "Brown",
            weight: "22 kg",
            type: "Playful",
            distance: "73m away",
            minAgo: "6 min ago"
         ),
         PetModel(
            name: "Lyi",
            imageName: "https://i.pinimg.com/originals/cc/c8/db/ccc8dbef81d399553b8cde07463e63c9.png",
            gender: .male,
            description: "The dog is a pet animal. A dog has sharp teeth so that it can eat flesh very easily, it has four legs, two ears, two eyes, a tail, a mouth, and a nose. It is a very clever animal and is very useful in catching thieves. It runs very fast, barks loudly and attacks the strangers.",
            age: "1.2",
            color: "Black",
            weight: "10 kg",
            type: "Playful",
            distance: "112m away",
            minAgo: "11 min ago"
         ),
         PetModel(
            name: "Richiel",
            imageName: "https://i.pinimg.com/originals/30/41/91/304191009bda1be52c751178f68a392a.jpg",
            gender: .female,
            description: "The dog is a pet animal. A dog has sharp teeth so that it can eat flesh very easily, it has four legs, two ears, two eyes, a tail, a mouth, and a nose. It is a very clever animal and is very useful in catching thieves. It runs very fast, barks loudly and attacks the strangers.",
            age: "0.7",
            color: "Brown",
            weight: "11 kg",
            type: "Playful",
            distance: "381m away",
            minAgo: "48 min ago"
         )
        ]
    }
