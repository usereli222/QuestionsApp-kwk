//
//  q3page.swift
//  QuestionsApp
//
//  Created by Scholar on 7/14/23.
//

import SwiftUI

struct q3page: View {
    @State private var input=""
    @State private var emoji=""
    @State private var button="Check answer"
    @State private var link=false
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .center, spacing: 50.0){
                Text("Question 3: How do you declare an array called 'array' that contains no values and is of data type String? Put a space between each new word/symbol. No space at the end.")
                    .font(.title)
                    .multilineTextAlignment(.leading)
                TextField("Type here...", text: $input).multilineTextAlignment(.center).font(.headline)
                Text(emoji)
                Button(button){
                    if(input=="Var array = [String]()"){
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
                    NavigationLink(destination: end()){
                        Text("Finish")
                    }
                }
                

            }.padding()
        }
        
        
    }
}

struct q3page_Previews: PreviewProvider {
    static var previews: some View {
        q3page()
    }
}
