//
//  UIImageExtensions.swift
//  LinearityUITest
//
//  Created by Khaled Attia on 25/05/2021.
// reference:
// https://joesusnick.medium.com/snapshot-xcui-testing-6a16c7ccd47b

import UIKit

extension UIImage {

    var removingStatusBar: UIImage? {
        guard let cgImage = cgImage else {
            return nil
        }

        let yOffsetTop = 30 * scale
        let yOffsetBottom = 20 * scale
        let rect = CGRect(
            x: 0,
            y: Int(yOffsetTop),
            width: cgImage.width,
            height: cgImage.height - Int(yOffsetTop) - Int(yOffsetBottom)
        )

        if let croppedCGImage = cgImage.cropping(to: rect) {
            return UIImage(cgImage: croppedCGImage, scale: scale, orientation: imageOrientation)
        }

        return nil
    }
}
