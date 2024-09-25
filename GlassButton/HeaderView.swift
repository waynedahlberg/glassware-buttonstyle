//
//  HeaderView.swift
//  GlassButton
//
//  Created by Wayne Dahlberg on 9/25/24.
//

import SwiftUI

struct HeaderView: View {
  @State private var isPressed: Bool = false
  var body: some View {
    HStack(spacing: 16) {
      Button(action: {
        // login action
      }) {
        HStack(spacing: 8) {
          LoginIconView()
          Text("Login")
            .font(.system(size: 14, weight: .semibold))
        }
        .padding()
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
        .padding()
      }
      .buttonStyle(GlassButtonStyle(isPressed: $isPressed))
      .shadow(color: Color.black.opacity(isPressed ? 0 : 0.65), radius: isPressed ? 0 : 10, x: 0, y: isPressed ? 0 : 20)
      .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0), value: isPressed)
    }
  }
}

#Preview {
  HeaderView()
}
