//
//  Icons.swift
//  GlassButton
//
//  Created by Wayne Dahlberg on 9/25/24.
//

import SwiftUI

struct LoginIconView: View {
  var body: some View {
    Image(systemName: "touchid")
      .resizable()
      .aspectRatio(contentMode: .fit)
      .frame(width: 18, height: 18)
  }
}

struct LockIcon: View {
  var body: some View {
    Image(systemName: "lock")
      .resizable()
      .aspectRatio(contentMode: .fit)
      .frame(width: 18, height: 18)
  }
}
