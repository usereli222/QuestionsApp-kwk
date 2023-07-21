//
//  q1page.swift
//  QuestionsApp
//
//  Created by Scholar on 7/14/23.
//

import SwiftUI

struct q1page: View {
    @State private var input=""
    @State private var emoji=""
    @State private var button="Check answer"
    @State private var link=false
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .center, spacing: 50.0){
                Text("Question 1: What's the correct syntax for creating a new String variable called 'test' with no value in it? Put a space between each new word/symbol")
                    .font(.title)
                    .multilineTextAlignment(.leading)
                TextField("Type here...", text: $input).multilineTextAlignment(.center).font(.headline)
                Text(emoji)
                Button(button){
                    if(input=="Var test : String"){
                        emoji="✅"
                        button=""
                        link=true
                    }else{
                        emoji="❌"
                        button="Try again"
                        
                        
                    }
                }
                if(link==true)
                {
                    NavigationLink(destination: q2page()){
                        Text("Next question")
                    }
                }
                

            }.padding()
        }
        
        
    }
}

struct q1page_Previews: PreviewProvider {
    static var previews: some View {
        q1page()
    }
}
