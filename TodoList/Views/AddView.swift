//
//  AddView.swift
//  TodoList
//
//  Created by macbook on 01.10.2022.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    var grayColor = #colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1)
    var radColor = #colorLiteral(red: 0.6819999814, green: 0.09268320352, blue: 0.112744011, alpha: 1)
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type here", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(UIColor.secondarySystemBackground))
                    .cornerRadius(10)
                
                Button(action: {
                    saveButtonPressed()
                }, label: {
                    Text("Save")
                        .foregroundColor(.white)
                        .frame(height: 55)
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .background(Color(radColor))
                        .cornerRadius(10)
                })
                
            }
            .padding(14)
            
        }
        .navigationTitle("Add New Item")
    }
    
    func saveButtonPressed() {
        listViewModel.addItem(title: textFieldText)
        presentationMode.wrappedValue.dismiss()
    }
    
    
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}
