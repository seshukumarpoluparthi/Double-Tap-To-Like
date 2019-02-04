//
//  PhotosViewController.swift
//  Double Tap To Like
//
//  Created by Kyle Lee on 2/3/19.
//  Copyright © 2019 Kilo Loco. All rights reserved.
//

import UIKit

class PhotosViewController: UITableViewController {
    
    let photos = [UIImage(named: "stock1"),
                  UIImage(named: "stock2"),
                  UIImage(named: "stock3"),
                  UIImage(named: "stock4"),
                  UIImage(named: "stock5")]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return photos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PhotoCell", for: indexPath)
        
        let photoCell = cell as? PhotoCell
        
        let photo = photos[indexPath.row]
        
        photoCell?.populate(with: photo)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return tableView.bounds.width
    }
}
