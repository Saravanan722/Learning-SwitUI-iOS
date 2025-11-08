//
//  DoubleExtension.swift
//  NewWorld
//
//  Created by Innocrux on 20/08/24.
//

import Foundation

extension Double {
  func asStringInMinute(style: DateComponentsFormatter.UnitsStyle) -> String {
    let formatter = DateComponentsFormatter()
    formatter.allowedUnits = [.minute, .second, .nanosecond]
    formatter.unitsStyle = style
    return formatter.string(from: self) ?? ""
  }
}
