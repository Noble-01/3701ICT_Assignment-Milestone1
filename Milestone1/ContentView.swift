//
//  ContentView.swift
//  Milestone1
//
//  Created by Zac Cripps on 4/3/20.
//  Copyright © 2020 Zac Cripps. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("potato")
        .resizable()
        .padding(.vertical, 15.0)
        .frame(width: 299.0, height: 300.0)
        .clipShape(Circle())
        .shadow(radius: 10)
        .scaledToFit()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
