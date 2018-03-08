//
//  GroupsTableViewCell.swift
//  ToDo
//
//  Created by TuyenVX on 3/8/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import UIKit

protocol GroupsTableViewCellDelegate: AnyObject {
    func didSelectedRowAtIndex(_ index: Int)
}

class GroupsTableViewCell: UITableViewCell {
    @IBOutlet weak private var seperatorLine: UIView!
    private var indexPath: IndexPath?
    weak var delegate: GroupsTableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = UITableViewCellSelectionStyle.none
    }
    
    @IBAction func didSelected(_ sender: UIButton, forEvent event: UIEvent) {
        guard let index = indexPath else {
            return
        }
        guard let touch = event.allTouches?.first else {
            return
        }
        let point = touch.location(in: sender)
        if isInCurrentCell(touchPoint: point) {
            delegate?.didSelectedRowAtIndex(index.row)
        } else {
            delegate?.didSelectedRowAtIndex(index.row + 1)
        }
    }
    
    func config(indexPath: IndexPath?) {
        self.indexPath = indexPath
    }
    // Find that point in current cell or next cell
    func isInCurrentCell(touchPoint: CGPoint) -> Bool {
        let y = (-40 / self.frame.width) * touchPoint.x + 140
        return touchPoint.y <= y
    }
}
