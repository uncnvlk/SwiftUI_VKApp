//
//  GroupsListViewModel.swift
//  login
//
//  Created by Elizaveta Sidorenkova on 20.02.2022.
//

import Foundation
import SwiftUI

class GroupsViewModel: ObservableObject {

    let groupService: GroupsAPI
    @Published var groups: [GroupModels] = []

    init(groupService: GroupsAPI) {
        self.groupService = groupService
    }

    public func fetchGroups() {
        groupService.getGroups { [weak self] groups in
            self?.groups = groups
        }
    }
}
