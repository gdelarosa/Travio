//
//  AnnotationView.swift
//  Places
//
//  Created by Boris Kachulachki on 1/24/17.
//  Copyright © 2017 Razeware LLC. All rights reserved.
//

import UIKit

protocol AnnotationViewDelegate {
  func didTouch(annotationView: AnnotationView)
}

class AnnotationView: ARAnnotationView {
  var titleLabel: UILabel?
  var distanceLabel: UILabel?
  var delegate: AnnotationViewDelegate?
  
  override func didMoveToSuperview() {
    super.didMoveToSuperview()
    loadUI()
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    titleLabel?.frame = CGRect(x: 10, y: 0, width: self.frame.size.width, height: 30)
    distanceLabel?.frame = CGRect(x: 10, y: 30, width: self.frame.size.width, height: 20)
  }
  
  override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    delegate?.didTouch(annotationView: self)
  }
  
  func loadUI() {
    titleLabel?.removeFromSuperview()
    distanceLabel?.removeFromSuperview()
    let frame = CGRect.init(x: self.frame.origin.x, y: self.frame.origin.y, width: 200, height: 100)
    self.frame = frame
    
    let label = UILabel(frame: CGRect(x: 10, y: 0, width: self.frame.size.width, height: 30))
    label.font = UIFont.systemFont(ofSize: 16)
    label.numberOfLines = 0
    label.backgroundColor = UIColor(white: 0.3, alpha: 0.7)
    label.textColor = UIColor.white
    label.textAlignment = .center
    self.addSubview(label)
    self.titleLabel = label
    
    distanceLabel = UILabel(frame: CGRect(x: 10, y: 30, width: self.frame.size.width, height: 20))
    distanceLabel?.backgroundColor = UIColor(white: 0.3, alpha: 0.7)
    distanceLabel?.textColor = UIColor.white
    distanceLabel?.font = UIFont.systemFont(ofSize: 12)
    distanceLabel?.textAlignment = .center
    self.addSubview(distanceLabel!)
 
    if let annotation = annotation as? Place {
      titleLabel?.text = annotation.placeName
      distanceLabel?.text = String(format: "%.2f mi", annotation.distanceFromUser / 1000)
    }
  }
}
