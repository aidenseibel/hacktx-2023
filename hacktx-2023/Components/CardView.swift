//
//  CardView.swift
//  hacktx-2023
//
//  Created by Aiden Seibel on 10/21/23.
//

import SwiftUI

struct CardView: View {
//    var card: Card
    var showUniversityAndDepartment: Bool
    
    var cardWidth: CGFloat = UIScreen.main.bounds.width * 0.90
    var cardHeight: CGFloat = UIScreen.main.bounds.width * 0.50
    
    var body: some View {
        ZStack{
            Image("example")
                .resizable()
                .scaledToFill()
                .frame(width: cardWidth, height: cardHeight)
            LinearGradient(
                gradient: Gradient(colors: [Color.clear, Color.black]),
                startPoint: .top,
                endPoint: .bottom
            )
            .frame(width: cardWidth, height: cardHeight)
            .opacity(0.8)
            
            VStack{
                Spacer()
                HStack{
                    VStack(alignment: .leading){
                        HStack(alignment: .bottom){
                            Text("Chemistry")
                                .lineLimit(1)
                                .font(.body)
                                .foregroundColor(.white)
                            Text("Texas Tech")
                                .lineLimit(1)
                                .font(.body)
                                .foregroundColor(.white)
                        }
                        Text("card.title")
                            .bold()
                            .lineLimit(1)
                            .font(.title)
                            .foregroundColor(.white)
                        Text("card.description")
                            .lineLimit(2)
                            .font(.body)
                            .foregroundColor(.white)
                    }
                    Spacer()
                }
            }.padding(EdgeInsets(top: 0, leading: 20, bottom: 30, trailing: 10))
        }
        .frame(width: cardWidth, height: cardHeight)
        .cornerRadius(10)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(showUniversityAndDepartment: true)
            .previewLayout(.sizeThatFits)
    }
}
