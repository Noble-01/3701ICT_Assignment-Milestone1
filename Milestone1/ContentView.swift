//
//  ContentView.swift
//  Milestone1
//
//  Created by Zac Cripps on 4/3/20.
//  Copyright © 2020 Zac Cripps. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var potato: Potato
    
    var body: some View {
        
        VStack(alignment: .center) {
            
            Text(potato.name)
                .font(.title)
                .fontWeight(.bold)
            
            Text(potato.scienceName)
                .font(.subheadline)
                .fontWeight(.light)
                .italic()
                .lineLimit(nil)
                .padding(.bottom, 15.0)
            
            Image("potato")
                .resizable()
                .padding(.vertical, 15.0)
                .frame(width: 299.0, height: 300.0)
                .clipShape(Circle())
                .shadow(radius: 10)
                .scaledToFit()
        
            HStack(alignment: .center) {
                VStack(alignment: .trailing){
                    Text("Family:").fontWeight(.bold).multilineTextAlignment(.center)
                        .padding(.bottom, 10.0)
                    
                    Text("Weight:")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 10.0)
                
                    Text("Nutrition: ")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                }
                
                VStack(alignment: .leading){
                    Text(potato.family)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 10.0)
                        
                    Text(potato.weight)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 10.0)
                    
                    Text(potato.nutrition)
                    .multilineTextAlignment(.center)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(potato: Potato(name: "Kipfler", family: "Sweet Potato", weight: "20grams", scienceName: "Solanum tuberosum", nutrition: "manganese, potassium and vitamin C"))
    }
}
