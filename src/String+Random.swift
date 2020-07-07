import Foundation
/**
 * Note: To avoid ambiguity we remove 0, O, 0, l, L, I from char sets (even tho this decrease entropy)
 */
extension String {
   /**
    * Creates random string
    */
   static func randomString(str: String, desiredLength: Int) -> String {
      guard desiredLength >= str.count else { fatalError("str has too little data") }
      let str = String(Array(str).shuffled())
      return str.subStr(desiredLength)
   }
   /**
    * ## Examples:
    * randomStr(str: "ABC", len: 6) // "ABBACC"
    * - Note: loops the base, so it always has enough data to generate the random string
    */
   static func randomStr(base: String, len: Int) -> String {
      let str: String = {
         var retVal: String = ""
         while retVal.count < len {
            let rest: Int = len - retVal.count
            let offset: Int = Swift.min(base.count, rest)
            retVal += base.subStr(offset)
         }
         return retVal
      }()
      return randomString(str: str, desiredLength: len)
   }
   /**
    * subStr
    */
   fileprivate func subStr(_ len: Int) -> String {
      let retVal = self[..<self.index(self.startIndex, offsetBy: len)]
      return String(retVal)
   }
   /**
    * Randomized string
    */
   var randomized: String {
      .randomString(str: self, desiredLength: self.count)
   }
}
