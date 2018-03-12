//
//  CircleView.swift
//  ToDo
//
//  Created by TuyenVX on 3/7/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import UIKit

class CircleView: UIView {
    var circleLayer: CAShapeLayer!
    var type: OverviewType!
    var titleLabel = UILabel.init()
    var countLabel = UILabel.init()
    var percentLabel = UILabel.init()
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.type = .completed
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.backgroundColor = .clear
        switch tag {
        case 0:
            type = .completed
        case 1:
            type = .snoozed
        default:
            type = .overdue
        }
        self.addSubview(titleLabel)
        self.addSubview(countLabel)
        self.addSubview(percentLabel)
    }

    init(frame: CGRect, type: OverviewType) {
        super.init(frame: frame)
        self.backgroundColor = .clear
        self.type = type
        self.addSubview(titleLabel)
        self.addSubview(countLabel)
        self.addSubview(percentLabel)
    }

    override func draw(_ rect: CGRect) {
        addCountLabel(frame)
        addTitleLabel(frame)
        addPercentLabel(frame)
        // Get the Graphics Context
        let context = UIGraphicsGetCurrentContext()
        // Set the circle outerline-width
        context!.setLineWidth(2.0)
        // Set the circle outerline-colour
        UIColor.darkGray.set()
        // Create Circle
        context?.addArc(center: CGPoint.init(x: frame.size.width / 2.0, y: frame.size.height / 2), radius: (frame.size.width - 4)/2, startAngle: CGFloat(Double.pi * 0.75), endAngle: CGFloat(Double.pi * 2.25), clockwise: false)
        // Draw
        context!.strokePath()
    }
    func addTitleLabel(_ frame: CGRect) {
        titleLabel.frame = CGRect.init(x: 0, y: frame.size.height / 2 + (frame.size.width / 2.0 - 2) / sqrt(2), width: frame.size.width, height: 15)
        titleLabel.text = type.rawValue
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.systemFont(ofSize: 10)
        titleLabel.textColor = .black
    }
    func addCountLabel(_ frame: CGRect) {
        countLabel.frame = CGRect.init(x: 0, y: frame.size.height / 2.0 - 15, width: frame.size.width, height: 30)
        countLabel.font = UIFont.systemFont(ofSize: 25)
        countLabel.textAlignment = .center
        countLabel.textColor = .black
    }
    func addPercentLabel(_ frame: CGRect) {
        percentLabel.frame = CGRect.init(x: 15, y: titleLabel.frame.origin.y + 15, width: frame.size.width - 30, height: 10)
        percentLabel.text = "20%"
        percentLabel.font = UIFont.systemFont(ofSize: 9)
        percentLabel.textAlignment = .center
        percentLabel.textColor = .subTextColor
    }
    // MARK: - Action
    func addCircle(percent: CGFloat, total: Int) {
        let circlePath = UIBezierPath(arcCenter: CGPoint(x: frame.size.width / 2.0, y: frame.size.height / 2), radius: (frame.size.width - 4)/2, startAngle: CGFloat(Double.pi * 0.75), endAngle: CGFloat(Double.pi * 1.5) * percent + CGFloat(Double.pi * 0.75), clockwise: true)
        percentLabel.text = "\(100 * percent) %"
        countLabel.text = "\(total)"
        circleLayer = CAShapeLayer()
        circleLayer.path = circlePath.cgPath
        circleLayer.fillColor = UIColor.clear.cgColor
        //    circleLayer.magnificationFilter = kCAFilterNearest
        guard let overviewType = type else {
            return
        }
        var color = UIColor.init()
        switch overviewType {
        case .completed:
            color = UIColor.completed
        case .snoozed:
            color = UIColor.snoozed
        case .overdue:
            color = UIColor.overdue
        }
        circleLayer.strokeColor = color.cgColor
        circleLayer.lineWidth = 2.4
        circleLayer.shadowRadius = 1.0
        circleLayer.shadowColor = color.cgColor
        circleLayer.shadowPath = circlePath.cgPath
        layer.addSublayer(circleLayer)
    }
    func animateCircle(_ duration: TimeInterval) {
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.duration = duration
        animation.fromValue = 0.0
        animation.toValue = 1.0
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        circleLayer.strokeEnd = 1.0
        circleLayer.add(animation, forKey: "animateCircle")
    }
}
