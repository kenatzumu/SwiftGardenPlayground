# Variables

## Types: **`String` | `Int` | `Double` | `Bool`**

### Declaring a variable:

```swift
// Variables
var str = "Hello, playground!"

var age = 24

var population = 8_000_000

var pi = 3.141

var str1 = """
This goes
over multiple
lines
"""

var str2 = """
This goes \
over multiple \
lines
"""

var awesome = true

// Constants
let taylor = "swift"
```

### Changing the value of that variable after initializing it:

```swift
str = "Goodbye"
```

### Remarks:

🔸 Swift assigns each variable and constant a type based on what value it’s given when it’s created. _Type inference_: Swift is able to infer the type of something based on how you created it.

🔸 Strings and integers are different types, and they can’t be mixed. So, while it’s safe to change **`str`** to “Goodbye”, I can’t make it 38 because that’s an **`Int`** not a **`String`**.

### String interpolation:

```swift
let user = nil
print("Hi, \(user ?? "Anonymous")")

var score = 85
var str = "Your score was \(score)"

var results = "The test results are here: \(str)"

// Swift 5.0
extension String.StringInterpolation {
    mutating func appendInterpolation(_ value: Int) {
        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut

        if let result = formatter.string(from: value as NSNumber) {
            appendLiteral(result)
        }
    }
}

let age = 24
print("Hi, I'm \(age).") // Prints: Hi, I'm twenty-four.

// Date:
mutating func appendInterpolation(_ value: Date) {
    let formatter = DateFormatter()
    formatter.dateStyle = .full

    let dateString = formatter.string(from: value)
    appendLiteral(dateString)
}

// Twitter:
mutating func appendInterpolation(twitter: String) {
    appendLiteral("<a href=\"https://twitter.com/\(twitter)\">@\(twitter)</a>")
}

print("You should follow me on Twitter: \(twitter: "horik").")

// Age:
mutating func appendInterpolation(format value: Int, using style: NumberFormatter.Style) {
    let formatter = NumberFormatter()
    formatter.numberStyle = style

    if let result = formatter.string(from: value as NSNumber) {
        appendLiteral(result)
    }
}

print("Hi, I'm \(format: age, using: .spellOut).") // Prints: Hi, I'm twenty-four.

// Autoclosures: use simple values or call complex functions for the default value
mutating func appendInterpolation(_ values: [String], empty defaultValue: @autoclosure () -> String) {
        if values.count == 0 {
            appendLiteral(defaultValue())
        } else {
            appendLiteral(values.joined(separator: ", "))
        }
    }

let names = ["Malcolm", "Jayne", "Kaylee"]
print("Crew: \(names, empty: "No one").")

// String interpolation on custom Objects
struct Person {
    var type: String
    var action: String
}

extension String.StringInterpolation {
    mutating func appendInterpolation(_ person: Person) {
        appendLiteral("I'm a \(person.type) and I'm gonna \(person.action).")
    }
}

let hater = Person(type: "hater", action: "hate")
print("Status check: \(hater)")

// Generics?
mutating func appendInterpolation<T: Encodable>(debug value: T) throws {
    let encoder = JSONEncoder()
    encoder.outputFormatting = .prettyPrinted

    let result = try encoder.encode(value)
    let str = String(decoding: result, as: UTF8.self)
    appendLiteral(str)
}

print(try "Status check: \(debug: hater)")
```

### Explicitly declaring variables with Type:

```swift
let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true
```
