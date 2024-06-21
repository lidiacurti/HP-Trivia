//
//  Instructions.swift
//  HP Trivia
//
//  Created by ulixe on 29/05/24.
//

import SwiftUI

struct Instructions: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack{
            InfoBackgroundImage()
            
            VStack {
                Image(.appiconwithradius)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                    .padding(.top)
                
                ScrollView {
                    Text("How To Play")
                        .font(.largeTitle)
                        .padding()
                    
                    VStack(alignment: .leading, content: {
                        Text("Welcome to HP Trivia! In this game, you will be asked random questions from the HP books and you must andswer the right answer or you will lose points!")
                            .padding([.horizontal, .bottom])
                        
                        Text("Each question is worth 5 points, but if you guess a wrong answer, you lose 1 point.")
                            .padding([.horizontal, .bottom])
                        Text("if you are struggling with a question, there is an option to reveal the book that answers the question. BUt Beware! Using these also minuses 1 point each.")
                            .padding([.horizontal, .bottom])
                        Text("When you select the correct answer, you will be awarded all the points left for that question and they will be added to your total score.")
                            .padding(.horizontal)
                        
                       
                    }
                    )
                    .font(.title3)
                    
                    Text("Good Luck!")
                        .font(.title)
                }
                .foregroundColor(.black)
                
                Button("Done") {
                    dismiss()
                }
                .doneButton()
            }
        }
    }
}

#Preview {
    Instructions()
}
