//
//  q2page.swift
//  QuestionsApp
//
//  Created by Scholar on 7/14/23.
//

import SwiftUI

struct q2page: View {
    @State private var input=""
    @State private var emoji=""
    @State private var button="Check answer"
    @State private var link=false
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .center, spacing: 50.0){
                Text("Question 2: How would you convert the integer 3 to the data type Double?")
                    .font(.title)
                    .multilineTextAlignment(.leading)
                TextField("Type here...", text: $input).multilineTextAlignment(.center).font(.headline)
                Text(emoji)
                Button(button){
                    if(input=="Double(3)"){
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
                    NavigationLink(destination: q3page()){
                        Text("Next question")
                    }
                }
                

            }.padding()
        }
        
        
    }
}

struct q2page_Previews: PreviewProvider {
    static var previews: some View {
        q2page()
    }
}
