//
//  EditEmployee.swift
//  NewWorld
//
//  Created by Innocrux on 11/09/24.
//

import SwiftUI

struct EditEmployee: View {
    @EnvironmentObject var companyList: CompanyList
    var company: Company
    var employee: Person
    var body: some View {
        VStack(alignment: .leading) {
            Text("Company")
            Picker(selection: Binding<Company>(
                get: { () -> Company in
                    return self.company
                }, set: { (company) in
                    if let cid = self.companyList.companies.firstIndex(of: self.company) {
                        if let eid =  self.companyList.companies[cid].employees.firstIndex(of: self.employee) {
                            if let ncid = self.companyList.companies.firstIndex(of: company) {
                                self.companyList.companies[cid].employees.remove(at: eid)
                                self.companyList.companies[ncid].employees.append(self.employee)
                            }
                        }
                    }
                }
            ), label: Text("")){
                ForEach(self.companyList.companies) { company in
                    Text(company.name).tag(company)
                }
            }.pickerStyle(SegmentedPickerStyle())
            Spacer()
        }.padding()
            .navigationBarTitle(self.employee.name)
    }
}
