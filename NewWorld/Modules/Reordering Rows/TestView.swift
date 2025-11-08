//
//  TestView.swift
//  NewWorld
//
//  Created by Innocrux on 11/09/24.
//

import SwiftUI

struct TestView: View {
    @EnvironmentObject var companyList: CompanyList
    @State var text : String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                List () {
                    ForEach (companyList.companies, id: \.self) { company in
                        Section(header: Text(company.name)) {
                            ForEach(company.employees) { employee in
                                NavigationLink(destination: EditEmployee(company: company, employee: employee)){
                                    Text(employee.name)
                                }.id(UUID())
                            }
                            .onDelete { (indexSet) in
                                self.companyList.deleteListItem(whichElement: indexSet, from: company)
                            }
                            .onMove { indexSet, intValue in
                                self.companyList.moveListItem(whichElement: indexSet, to: intValue, from: company)
                            }
                            .onInsert(of: ["chris"]) { (intValue, _) in
                                print("wtf")
                            }
                        }
                    }
                }
                .listStyle(GroupedListStyle())
                .navigationBarItems(trailing: EditButton())
            }
        }
    }
}
