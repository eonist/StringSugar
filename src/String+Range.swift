import Foundation
/**
 *
 let data = "This is a string!"
 
 data[..<4]  // "This"
 data[5..<9] // "is a"
 data[10...] // "string!"
 */
extension String {
   public subscript(value: CountableClosedRange<Int>) -> Substring {
      return self[index(startIndex, offsetBy: value.lowerBound)...index(startIndex, offsetBy: value.upperBound)]
   }
   public subscript(value: CountableRange<Int>) -> Substring {
      return self[index(startIndex, offsetBy: value.lowerBound)..<index(startIndex, offsetBy: value.upperBound)]
   }
   public subscript(value: PartialRangeUpTo<Int>) -> Substring {
      return self[..<index(startIndex, offsetBy: value.upperBound)]
   }
   public subscript(value: PartialRangeThrough<Int>) -> Substring {
      return self[...index(startIndex, offsetBy: value.upperBound)]
   }
   public subscript(value: PartialRangeFrom<Int>) -> Substring {
      return self[index(startIndex, offsetBy: value.lowerBound)...]
   }
}
