//
//  GlassButtonStyle.swift
//  GlassButton
//
//  Created by Wayne Dahlberg on 9/25/24.
//

import SwiftUI

struct LinkButtonStyle: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .foregroundColor(.black)
  }
}

// MARK: - Glass Buttonstyle
struct GlassButtonStyle: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .padding(.vertical, 8)
      .padding(.horizontal, 17)
      .background(
        ZStack {
          Color.black.opacity(0.04)
          
          RoundedRectangle(cornerRadius: 9999)
            .strokeBorder(
              LinearGradient(
                gradient: Gradient(colors: [
                  Color.white.opacity(0.94),
                  Color(#colorLiteral(red: 0.4745098039, green: 0.4745098039, blue: 0.4745098039, alpha: 1)), // #797979
                  Color(#colorLiteral(red: 0.6431372549, green: 0.6431372549, blue: 0.6431372549, alpha: 1)), // #a4a4a4
                  Color.white
                ]),
                startPoint: .top,
                endPoint: .bottom
              ),
              lineWidth: 1
            )
        }
      )
      .clipShape(RoundedRectangle(cornerRadius: 9999))
      .shadow(color: Color.black.opacity(0.1), radius: 78, x: 0, y: 78)
      .shadow(color: Color.black.opacity(0.07), radius: 50, x: 0, y: 50)
      .shadow(color: Color.black.opacity(0.06), radius: 30, x: 0, y: 30)
      .shadow(color: Color.black.opacity(0.04), radius: 16, x: 0, y: 16)
      .shadow(color: Color.black.opacity(0.04), radius: 6, x: 0, y: 6)
      .shadow(color: Color.black.opacity(0.02), radius: 2, x: 0, y: 2)
      .scaleEffect(configuration.isPressed ? 0.95 : 1)
      .animation(.easeInOut(duration: 0.2), value: configuration.isPressed)
  }
}
