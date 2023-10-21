//
//  DepartmentCellView.swift
//  hacktx-2023
//
//  Created by Aiden Seibel on 10/21/23.
//

import SwiftUI

struct DepartmentCellView: View {
    
    var cellWidth: CGFloat = UIScreen.main.bounds.width * 0.40
    var cellHeight: CGFloat = UIScreen.main.bounds.width * 0.40

    var body: some View {
        ZStack{
            Image("example")
                .resizable()
                .scaledToFill()
                .frame(width: cellWidth, height: cellHeight)
            LinearGradient(
                gradient: Gradient(colors: [Color.clear, Color.black]),
                startPoint: .top,
                endPoint: .bottom
            )
            .frame(width: cellWidth, height: cellHeight)
            .opacity(0.8)
            
            VStack{
                Spacer()
                HStack{
                    VStack(alignment: .leading){
                        Text("Biology")
                            .bold()
                            .minimumScaleFactor(0.5)
                            .lineLimit(2)
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    Spacer()
                }
            }.padding(EdgeInsets(top: 0, leading: cellWidth * 0.07, bottom: cellWidth * 0.1, trailing: 10))
        }
        .frame(width: cellWidth, height: cellWidth)
        .cornerRadius(10)
    }
}

struct DepartmentCellView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            HStack{
                DepartmentCellView()
                DepartmentCellView()
            }
            HStack{
                DepartmentCellView()
                DepartmentCellView()

            }
        }
    }
}
