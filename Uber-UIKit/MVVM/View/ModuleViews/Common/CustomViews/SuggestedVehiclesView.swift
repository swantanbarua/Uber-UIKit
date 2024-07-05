//
//  SuggestedVehiclesView.swift
//  Uber-UIKit
//
//  Created by Swantan Barua on 03/07/24.
//

import UIKit

final class SuggestedVehiclesView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureView()
    }
    
    private func configureView() {
        guard let view = self.loadViewFromNib(
            nibName: CustomNibEnums.SuggestedVehiclesView.rawValue
        ) else { return }
        view.frame = self.bounds
        self.addSubview(view)
    }
}
