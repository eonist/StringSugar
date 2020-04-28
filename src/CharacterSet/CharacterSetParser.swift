import Foundation

class CharacterSetParser {
	/**
	 * Returns number of occurences of characterSet in a string
	 * ## Examples:
	 * occurences(str: "abc123$%#", characterSet: .decimalDigits) // 3 (numbers)
 	 * occurences(str: "abc123$%#", characterSet: .alphanumerics) // 6 (letters and numbers)
 	 * occurences(str: "abc123$%#", characterSet: .letters) // 3 (letters)
 	 * occurences(str: "abc123$%#", characterSet: .alphanumerics, inverted: false) // 3 (non-letter/numbers)
	 * - Note: We do the joined, because then we avoid the tail issue in components array
	 */
	static func occurences(str: String, characterSet: CharacterSet, inverted: Bool = true) -> Int {
	   let charSet: CharacterSet = inverted ? characterSet.inverted : characterSet
	   return str.components(separatedBy: charSet).joined().count // joined()
	}
}
