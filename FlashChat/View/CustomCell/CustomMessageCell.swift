//
//  CustomMessageCell.swift
//  FlashChat
//
//  Created by Gabriel Del VIllar on 10/30/18.
//  Copyright © 2018 gdelvillar. All rights reserved.
//

import UIKit

class CustomMessageCell: UITableViewCell {
  
  @IBOutlet var messageBackground: UIView!
  @IBOutlet var avatarImageVIew: UIImageView!
  @IBOutlet var messageBody: UILabel!
  @IBOutlet var senderUsername: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

  

}
