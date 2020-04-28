public class CharacterAsserter {
    /**
     * Asserts if a string contains a character
     * ## Examples:
     * "testing\n".characters.contains(Character("\n"))//true
     */
    public static func contains(_ string: String, char: Character) -> Bool {
        return string.string.contains(char)
    }
}
