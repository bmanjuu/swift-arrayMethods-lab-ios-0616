/*: Outline
 
 
 # Array Methods
 
 ### Readings associated with this lab
 
 * [Array](https://github.com/learn-co-curriculum/swift-array-readme)
 * [Array Iteration](https://github.com/learn-co-curriculum/swift-arrayIteration-readme)
 * [Array Methods](https://github.com/learn-co-curriculum/swift-arrayMethods-readme)
 

 */
/*: question1
 ### 1. Create a changeable list for the five days of the week called 'daysOfTheWeek' and print each one by using a loop.
 */
// write your code here
var daysOfTheWeek = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]

for day in daysOfTheWeek {
    print(day)
}






/*: question2
 ### 2. Create an unchanging list for the five days of the week called 'numDaysOfTheWeek' and print each one by using a loop, prefixed by the position of the day of the week.
 */
// write your code here
let numDaysOfTheWeek = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]

var dayOfWeekIndex = 1 //Sunday is 0, Monday is 1 and etc 

for day in numDaysOfTheWeek {
    print("\(dayOfWeekIndex). \(day)")
    dayOfWeekIndex+=1
}






/*: question3
 ### 3. Create an empty array of strings called 'emptyArray' and check to see if it's empty, printing appropriate messages.
 */
// write your code here
var emptyArray: [String] = []

if emptyArray.isEmpty {
    print("I'm empty!")
}
else {
    print("Surprise! I'm not empty!")
}







/*: question4
 ### 4.  Create an empty array of strings called 'reverseEmptyArray' and check to see if it's empty, printing appropriate messages. Use reversed logic from question 3.
 */
// write your code here
let reverseEmptyArray: [String] = []

if !reverseEmptyArray.isEmpty {
    print("Hellooooo")
}
else {
    print("Empty!")
}








/*: question5
 ### 5. Find out the size of the 'daysOfTheWeek' array created earlier, and print it to the screen.
 */
// write your code here
print(daysOfTheWeek.count)







/*: question6
 ### 6. Add the two days of the weekend to the 'daysOfTheWeek array and create an enumerated loop to print the values.
 */
// write your code here
daysOfTheWeek.insert("Sunday", atIndex: 0)
daysOfTheWeek.append("Saturday")








/*: question7
 ### 7. Some people start the week on a Sunday. Remove Sunday from the end of the 'daysOfTheWeek' array and then re-add it to the beginning of the array.
 */
// write your code here
for (i, day) in daysOfTheWeek.enumerate() {
    print("\(i + 1). \(day)")
    //now adding 1 to to index so that Sunday is matched with 1 (and etc) and so that we have numbers 1-7 for the days of the week
}







/*: question8
 ### 8. Loop through the 'daysofTheWeek' array and change each value to lower case.
 */
// write your code here
for (i, day) in daysOfTheWeek.enumerate() {
    print(day.lowercaseString)
}





/*: question9
 ### 9. Check to see if the size of the array is greater than 5, i.e. contains the days of the weekend. If so, remove the days of the weekend from the array.
 */
// write your code here
func checkNumberOfDays (week: [String]) -> [String]{
    var weekCopy = week
    if weekCopy.count > 5 {
        weekCopy.removeAtIndex(week.indexOf("Saturday")!)
        weekCopy.removeAtIndex(week.indexOf("Sunday")!)
    }
    return weekCopy
}

print(checkNumberOfDays(daysOfTheWeek))




//: Check here on the solution branch for a link to the solutions
