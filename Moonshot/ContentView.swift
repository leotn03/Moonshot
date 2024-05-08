//
//  ContentView.swift
//  Moonshot
//
//  Created by Leo Torres Neyra on 10/1/24.
//

import SwiftUI

struct ContentView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")

    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]

    @State private var showingGrid = false
    
    var body: some View {
        NavigationStack {

            Group {
                if showingGrid {
                    GridLayout(missions: missions, astronauts: astronauts)
                } else {
                    ListLayout(missions: missions, astronauts: astronauts)
                }
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbar {
                HStack {
                    Button ("Grid", systemImage: "square.grid.2x2"){
                        showingGrid.toggle()
                    }
                    .disabled(showingGrid)
                    
                    Button ("List", systemImage: "list.bullet"){
                        showingGrid.toggle()
                    }
                    .disabled(!showingGrid)
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
