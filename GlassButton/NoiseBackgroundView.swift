//
//  NoiseBackgroundView.swift
//  GlassButton
//
//  Created by Wayne Dahlberg on 9/25/24.
//

import SwiftUI

struct NoiseBackgroundView: View {
  var body: some View {
    ZStack {
      Color(red: 0.9058823529, green: 0.9058823529, blue: 0.9058823529)
      
      Canvas { context, size in
        context.addFilter(.alphaThreshold(min: 0.5, color: .black))
        context.addFilter(.blur(radius: 8))
        
        context.drawLayer { ctx in
            for _ in 0..<100 {
              let x = Double.random(in: 0...size.width)
              let y = Double.random(in: 0...size.height)
              let rect = CGRect(x: x, y: y, width: 1, height: 1)
              ctx.fill(Path(rect), with: .color(.black.opacity(0.2)))
          }
        }
      }
      .opacity(0.2)
    }
    .ignoresSafeArea()
  }
}

#Preview {
  NoiseBackgroundView()
}
