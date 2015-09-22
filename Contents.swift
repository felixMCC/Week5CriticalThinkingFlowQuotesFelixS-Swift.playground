//: Playground - noun: a place where people can play

import UIKit

//compose a dictionary with motivational quotes
let motivational:[Int:String] = [
    1: "Life is about making an impact, not making an income. --Kevin Kruse",
    2: "Whatever the mind of man can conceive and believe, it can achieve. –Napoleon Hill",
    3: "Strive not to be a success, but rather to be of value. –Albert Einstein",
    4: "Two roads diverged in a wood, and I—I took the one less traveled by, And that has made all the difference.  –Robert Frost",
    5: "I attribute my success to this: I never gave or took any excuse. –Florence Nightingale",
    6: "You miss 100% of the shots you don’t take. –Wayne Gretzky",
    7: "I’ve missed more than 9000 shots in my career. I’ve lost almost 300 games. 26 times I’ve been trusted to take the game winning shot and missed. I’ve failed over and over and over again in my life. And that is why I succeed. –Michael Jordan",
    8: "The most difficult thing is the decision to act, the rest is merely tenacity. –Amelia Earhart"
]

var str = "Hello, this is a simple program that will print a positive message depending upon the time of day. Enjoy! :)\n"


//Get current minutes
let date = NSDate()
let calendar = NSCalendar.currentCalendar()
let components = calendar.components(.CalendarUnitHour | .CalendarUnitMinute, fromDate: date)
let minutes = components.minute

//create seed for random number
var seed: UInt32 = UInt32(minutes)

//get random number based off seed (current minute)
let randomNumber = arc4random_uniform(seed)

println(str)    //print intro

//depending on the time, decide what quote to print out
if randomNumber < 8 {
    println(motivational[1]!)
}else if randomNumber < 16{
    println(motivational[2]!)
}else if randomNumber < 23{
    println(motivational[3]!)
}else if randomNumber < 27{
    println(motivational[4]!)
}else if randomNumber < 35{
    println(motivational[5]!)
}else if randomNumber < 45{
    println(motivational[6]!)
}else if randomNumber < 52{
    println(motivational[7]!)
}else if randomNumber < 60{
    println(motivational[8]!)
}
println("Message is chosen by a random number function that is seeded by the current time (minutes) ")
