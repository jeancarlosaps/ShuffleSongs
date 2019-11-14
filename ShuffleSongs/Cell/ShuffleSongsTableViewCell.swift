//
//  ShuffleSongsTableViewCell.swift
//  ShuffleSongs
//
//  Created by Jean Carlos on 11/9/19.
//  Copyright © 2019 Jean Carlos. All rights reserved.
//

import UIKit

class ShuffleSongsTableViewCell: UITableViewCell {
    
    // MARK: Outlets
    @IBOutlet weak var artwork: UIImageView!
    @IBOutlet weak var trackName: UILabel!
    @IBOutlet weak var artistName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
