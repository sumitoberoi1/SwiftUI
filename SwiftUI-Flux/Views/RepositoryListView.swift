//
//  ContentView.swift
//  SwiftUI-Flux
//
//  Created by Sumit Oberoi on 6/5/19.
//  Copyright © 2019 Sumit Oberoi. All rights reserved.
//

import SwiftUI

struct RepositoryListView : View {
    @ObservedObject var store: RepositoryListStore = .shared
    private var actionCreator: RepositoryListActionCreator
    
    init(actionCreator: RepositoryListActionCreator = .init()) {
        self.actionCreator = actionCreator
    }
    
    var body: some View {
        NavigationView {
            List(store.repositories) { repository in
                RepositoryListRow(repository: repository)
            }
            .alert(isPresented: $store.isErrorShown) { () -> Alert in
                Alert(title: Text("Error"), message: Text(store.errorMessage))
            }
            .navigationBarTitle(Text("Repositories"))
        }
        .onAppear(perform: { self.actionCreator.onAppear() })
    }
}

#if DEBUG
struct RepositoryListView_Previews : PreviewProvider {
    static var previews: some View {
        RepositoryListView()
    }
}
#endif
