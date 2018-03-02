//
//  DiagonalView.swift
//  ToDo
//
//  Created by TuyenVX on 3/1/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import UIKit

class DiagonalView: UIView {
  @IBInspectable var fillColor: UIColor = .white {
    didSet {
      setNeedsLayout()
    }
  }
  let points = [
    CGPoint.zero,
    CGPoint(x: 0, y: 1),
    CGPoint(x: 1, y: 1),
    CGPoint(x: 1, y: -40)
  ]
  private lazy var shapeLayer: CAShapeLayer = {
    let layer = CAShapeLayer()
    self.layer.insertSublayer(layer, at: 0)
    return layer
  }()

  override func layoutSubviews() {
    shapeLayer.fillColor = fillColor.cgColor
    let path = UIBezierPath()
    path.move(to: convert(points.first!))
    for point in points.dropFirst() {
      path.addLine(to: convert(point))
    }
    path.close()
    shapeLayer.path = path.cgPath
  }

  private func convert(_ relativePoint: CGPoint) -> CGPoint {
    return CGPoint(x: relativePoint.x * bounds.width + bounds.origin.x, y: relativePoint.y * bounds.height + bounds.origin.y)
  }
}
