//
//  ContentView.swift
//  GlassButton
//
//  Created by Wayne Dahlberg on 9/25/24.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    ZStack {
      NoiseBackgroundView()
      VStack {
        HeaderView()
          .padding(.top, 96)
        Spacer()
      }
    }
    .ignoresSafeArea(.all)
    .persistentSystemOverlays(.hidden)
  }
}

#Preview {
  ContentView()
}
