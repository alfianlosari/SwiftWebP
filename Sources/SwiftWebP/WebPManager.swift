import Foundation
import UIKit
import YYImageLib

public struct WebPDecoder {

    public init() {}

    public func decode(data: Data) -> [UIImage]? {
        guard let decoder = YYImageDecoder(data: data, scale: 1.0) else { return nil }
        var images: [UIImage] = []
        for index in 0..<decoder.frameCount {
            guard let image = decoder.frame(at: index, decodeForDisplay: true)?.image else { continue }
            images.append(image)
        }
        return images.count > 0 ? images : nil
    }
}

public struct WebPEncoder {

    public init() {}
    
    public func encode(image: UIImage) -> Data? {
        guard let encoder = YYImageEncoder(type: YYImageType.webP) else { return nil }
        encoder.add(image, duration: 0.0)
        return encoder.encode()
    }

    public func encodePNG(data: Data) -> Data? {
        guard let encoder = YYImageEncoder(type: YYImageType.webP) else { return nil }
        encoder.addImage(with: data, duration: 0.0)
        return encoder.encode()
    }
}
