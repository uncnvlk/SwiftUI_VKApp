//
//  GroupList.swift
//  login
//
//  Created by Elizaveta Sidorenkova on 12.02.2022.
//

import SwiftUI

import SwiftUI

struct GroupsView: View {

    @ObservedObject var viewModel: GroupsViewModel

    init(viewModel: GroupsViewModel) {
        self.viewModel = viewModel
    }
    var body: some View {
        List(viewModel.groups) { group in
            GroupCell(group: group)
        }.onAppear(perform: viewModel.fetchGroups)
            .navigationBarTitle("Groups", displayMode: .inline)
    }
}
