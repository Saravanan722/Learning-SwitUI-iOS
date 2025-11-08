//
//  ReorderingRowsView.swift
//  NewWorld
//
//  Created by Innocrux on 11/09/24.
//

import SwiftUI

struct ReorderingRowsView: View {
    @State private var countries = ["USA", "Canada", "Mexico", "England", "Spain", "Germany", "Cameroon", "South Africa" , "Japan", "South Korea"]
    var body: some View {
        NavigationStack {
            List {
                ForEach(countries, id: \.self) {
                    country in
                    Text(country)
                        .listStyle(.plain)
                }
                .onMove(perform: moveRow)
            }
            .navigationTitle("Countries")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                EditButton()
            }
        }
    }
    
    private func moveRow(source: IndexSet, destination: Int) {
        countries.move(fromOffsets: source, toOffset: destination)
    }
}

#Preview {
    ReorderingRowsView()
}

struct Person: Identifiable, Hashable {
    var id = UUID()
    var name: String
}

struct Company : Identifiable, Hashable {
    var id = UUID()
    var name: String
    var employees : [Person]
}

class CompanyList: ObservableObject {
    @Published var companies = [
        Company(name: "Apple", employees: [Person(name:"Bob"), Person(name:"Brenda")]),
        Company(name: "Microsoft", employees: [Person(name:"Bill"), Person(name:"Lucas")]),
        Company(name: "Facebook", employees: [Person(name:"Mark"), Person(name:"Sandy")])
    ]

    func deleteListItem(whichElement: IndexSet, from company: Company) {
        if let index = self.companies.firstIndex(of: company) {
            self.companies[index].employees.remove(atOffsets: whichElement)
        }
    }

    func moveListItem(whichElement: IndexSet, to companyIndex: Int, from company: Company) {
        if let index = self.companies.firstIndex(of: company) {
            self.companies[index].employees.move(fromOffsets: whichElement, toOffset: companyIndex)
        }
    }
}

