// For loops
for i in 1...5 {
    print(i)
}

// Optional: Why does Swift use underscores with loops?
for _ in 1...3 {
    print("Hello")
}

// While loops
var x = 0
while x < 5 {
    print(x)
    x += 1
}

// Optional: When should you use a while loop?
var temperature = 80
while temperature > 70 {
    print("Cooling down...")
    temperature -= 1
}

// Repeat loops
var y = 0
repeat {
    print(y)
    y += 1
} while y < 5

// Optional: When should you use a repeat loop?
var isValidInput = false
repeat {
    let userInput = getUserInput()
    isValidInput = validateInput(userInput)
} while !isValidInput

// Exiting loops
for i in 1...10 {
    if i == 5 {
        break
    }
    print(i)
}

// Optional: Why would you want to exit a loop?
var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
for number in numbers {
    if number % 2 == 0 {
        print("Found an even number: \(number)")
        break
    }
}

// Exiting multiple loops
outerLoop: for i in 1...3 {
    innerLoop: for j in 1...3 {
        if j == 2 {
            break outerLoop
        }
        print("i: \(i), j: \(j)")
    }
}

// Optional: Why does Swift have labeled statements?
// Labeled statements allow you to break or continue specific loops when you have nested loops.
// They provide a way to specify which loop to exit or skip to when there are multiple levels of loops.

// Skipping items
for i in 1...10 {
    if i % 2 == 0 {
        continue
    }
    print(i)
}

// Optional: When to use break and when to use continue
// Use break to completely exit a loop, and use continue to skip the rest of the current iteration and move to the next one.

// Infinite loops
while true {
    // Code that runs indefinitely
}

// Optional: Why would you want to make an infinite loop?
// Infinite loops are useful when you want to create event-driven programs or continuously monitor for certain conditions.

// Looping summary
for i in 1...5 {
    if i == 3 {
        continue
    }
    print(i)
}
