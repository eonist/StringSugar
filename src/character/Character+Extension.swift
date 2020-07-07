import Foundation

extension Character {
    public var cgFloat: CGFloat { return CGFloat(Double(String(self))!) }
    public var double: Double { return Double(String(self))! }
    public var uint: UInt { return UInt(Float(String(self))!) }
    public var int: Int { return Int(String(self))! }
}
/**
 * Character
 */
extension Character {
   /**
    * Asserts if char is ascii or not
    */
   var isAscii: Bool {
      unicodeScalars.first?.isASCII == true
   }
   /**
    * Returns the ascii-code of a character
    */
   var ascii: UInt32? {
      isAscii ? unicodeScalars.first?.value : nil
   }
}
/**
 * StringProtocol
 */
extension StringProtocol {
   /**
    * Returns ascii-codes as an array from a string
    * - Fixme: ⚠️️ Write example
    */
   var ascii: [UInt32] {
      compactMap { $0.ascii }
   }
   /**
    * Returns ascii-codes as a continouse string
    * - Fixme: ⚠️️ Write example
    */
   var asciiString: String {
      ascii.reduce("") { String($0) + String($1) }
   }
}
