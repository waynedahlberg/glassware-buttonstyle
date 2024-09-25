//
//  HeaderView.swift
//  GlassButton
//
//  Created by Wayne Dahlberg on 9/25/24.
//

import SwiftUI

struct HeaderView: View {
  var body: some View {
    HStack(spacing: 32) {
      Button(action: {
        // login action
      }) {
        HStack(spacing: 8) {
          LoginIconView()
          Text("Login")
            .font(.system(size: 14, weight: .semibold))
        }
      }
      .buttonStyle(LinkButtonStyle())
      
      Button(action: {
        // Start trial action
      }) {
        HStack(spacing: 8) {
          LockIcon()
          Text("Start your trial")
            .font(.system(size: 14, weight: .semibold))
        }
      }
      .buttonStyle(GlassButtonStyle())
      .shadow(color: Color.black.opacity(0.65), radius: 10, x: 0, y: 20)
    }
  }
}

#Preview {
  HeaderView()
}
