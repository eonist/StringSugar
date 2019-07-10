import Foundation

class StringAsserter {
   /**
	 * ## Examples:
    * Asserts if a word is duoble quated: isWrappedWith("\"abc123\"", "\"")//true
	 */
	static func isWrappedWith(_ string: String, _ char: Character) -> Bool {
		return (string.string.first == char) && (string.string.last == char)
	}
    static func isWrappedWith(_ string: String, _ str: String) -> Bool {
        return string.endsWith(str) && string.beginsWith(str)
    }
	/**
	 *	Asserts whether the specified string begins with the spcified prefix.
	 *	- PARAM: string: The string that the prefix will be checked against.
	 *	- PARAM: prefix: The prefix that will be tested against the string.
	 *	- RETURN: True if the string starts with the prefix, false if it does not.
	 */
	static func beginsWith(_ string: String, _ prefix: String) -> Bool {
        return string.hasPrefix(prefix)
	}
    /**
     * Asserts if PARAM: str ends with PARAM: suffix
     */
    static func endsWith(_ str: String, _ suffix: String) -> Bool {
        return str.hasSuffix(suffix)
    }
    /**
     * Asserts if a string is the word true or false
     */
    static func boolean(_ string: String) -> Bool {
        //Swift.print("StringAsserter.boolean()"+"\(Bool(string == "true").dynamicType)")
        return string == "true" || string == "false"//string.test("^(true|false)$")
    }
    /**
     * Check if string contains another string
     */
    static func contains(_ a: String, _ b: String) -> Bool {
        return a.range(of: b) != nil
    }
    /**
     * New
     */
    static func int(str: String) -> Bool {
        return Int(str) != nil
    }
    static func webColor(_ string: String) -> Bool {
        return WebColors.webColors.contains(string)/*was regexp, is now array assert because probably faster*/
    }
    /**
     * Asserts if a string is in lower case
     */
    static func lowerCase(_ string: String) -> Bool {
        return string == string.lowercased()
    }
    /**
     * New
     */
    static func within(str: String, min: Int, max: Int) -> Bool {
        return str.count > min && str.count < max
    }
}
