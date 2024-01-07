//
//  CardView.swift
//  Hike
//
//  Created by 郭又萓 on 2024/1/6.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES
    @State private var imageNumber: Int=1
    @State private var randomNumber: Int=1
    //MARK: - FUNCTIONS
    func randomImage(){
        print("---BUTTON WAS PRESSED---")
        print("Status:Old Image Number=\(imageNumber)")
        repeat{
            randomNumber=Int.random(in: 1...5)
            print("Action:Random Number Generated=\(randomNumber)")
        }while randomNumber==imageNumber
        
        imageNumber=randomNumber
        print("Result:New Image Number=\(imageNumber)")
        print("---THE END---")
    }
    var body: some View {
        //MARK: - CARD
        ZStack{
            CustomBackgroundView()
            VStack{
                //MARK: - HEADER
                VStack(alignment:.leading){
                    HStack{
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [.customGrayLight,
                                             .customGrayMedium],
                                    startPoint: .top,
                                    endPoint: .bottom))
                        Spacer()
                        Button{
                            // ACTION: SHOW A SHeet
                            print("The button was pressed.")
                        }label:{
                            CustomButtom()
                        }
                    }
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }//: HEADER
                .padding(.horizontal,30)
                //MARK: - MAIN CONTENT
                
                ZStack{
                    Circle()
                        .fill(
                        LinearGradient(colors:
                                        [Color("ColorIndigoMedium"),Color("ColorSalmonLight")],
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing
                                      )
                        )
                        .frame(width:256,height:256)
                    
                    Image("image-\(imageNumber)")
                        .resizable()//allow resizing image
                        .scaledToFit()//scale image to fit
                        .animation(.default, value: imageNumber)
                }
                //MARK: - FOOTER
                Button{
                    print("The button was pressed.")
                    randomImage()
                }label:{
                    Text("Explore more")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(LinearGradient(
                            colors: [.customGreenLight,
                                     .customGreenMedium],
                            startPoint: .top,
                            endPoint: .bottom)
                        )
                        .shadow(color:.black.opacity(0.25),radius: 0.25,x:1,y:2)
                }
                .buttonStyle(GradientButton())
            }//: ZSTACK
            
        }//: CARD
        .frame(width:320,height:570)
    }
}

#Preview {
    CardView()
}