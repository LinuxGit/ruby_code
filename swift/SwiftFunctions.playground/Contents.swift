//Defining Functions
func sayHello(personName: String) -> String {
    return "Hello, " + personName + "!"
}
print(sayHello("Anna"))

//Functions Without Parameters
func sayHelloWorld() -> String {
    return "Hello World."
}
print(sayHelloWorld())

//Functions with multiple parameters
func sayHello(personName: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return "Hello again, \(personName)."
    } else {
        return "Hello, \(personName)."
    }
}
print(sayHello("Louis", alreadyGreeted: true))

