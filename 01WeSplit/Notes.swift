//
//  Notes.swift
//  01WeSplit
//
//  Created by Guy on 1/16/21.
//

import Foundation


//MARK: Day 16 Project 1, Part One

//Now that you've mastered the basics of the Swift language, it's time to start applying your skills to some real code in our first project.

//This project is a check-sharinng app that calculates the number of people and how much tip you want to leace. The project itself isn't complicated, but we'll be taking it slow so you can see exactly how these fundamentals fit together.

//In some respects going back to the basics like this will feel odd - you've learned about closures, optionals, and throwing functions, and now there's a bit of a reset as we look at the basics of SwiftUi. But take hope: there's a lot of value in being abe to approach new topics witha fresh mind. As Meister Eckhart said, "be willing to be a beginner every single morning" - do that, and you'll learn much faster.

//Today is the project overview day, which is where we'll be looking at the isolated pieces of code that you need to understand in order to build our project. Tomorro we'll move on to the implementation day, where you'll put those new techniwques into practice with our app.

//Today you have seven topics to work through, and you'll meet For, NavigationView, @State, and more.

//MARK: 1. WeSplit Introduction

//In this project we're going to be buiding a check-splitting app that you might use after eating at a restaurant - you enter the cost of your foo, select how much of a tip you wna t to leave, and how many people you're with, and it will tell you how much each person needs to pay.

//This project sin't trying to build anything complicated, because its real purpose is to teach you the basics of SwiftUI in a useful way while also giving you a real-world project you can expand on further if you want.

//You'll learn the basics of UI design, how to let users enter values and select from options, and how to track program state. As this is the first project, we'll be going nice and slow and explaining everyting along the way - subsequent projects will slowly increase the speed, but for now, we're taking it easy.

//This project, like all the projects that inolve building a complete app - is broken down into three stages:

// 1. A hands-on introduction to all the techniques you'll be learning.

//2. A step-by-step guide to build the project.

//3. Challenges for you to complete on your own, to take the project further.

//Each of those are important, so don't try to rush past any of them.

//In the first step, I'll be teaching you each of the individual new components in isolation, so you can understand how they work individually. There will be lots of code, but also some explanation so you can see how everything works just by itself. This step is an overview: here are the things we're going to be using, here is how they work, and here is how you use them.

//In the second step we'll be taking those concepts and applying them in a rel project. this is where you'll see how things work in practice, but you'll also get more context - here's why we want to use them, and here's how they fit together with other components.

//In the final step, we'll be summarizing what you have learned, and then you'll be given a short test to make sure you've really understood what was covered. You'll also be given three challenges: three wholly new tasks that you need to complete yourself, to be sure you're able to apply the skills you've learned. We don't provide solutions for these challenges (so please don't write an email asking for them!), because they are there to test you rather than following along with a solution.

//Anyway, enough chat: it's time to begin the first project. We're going to look at the techniques required to build our check-sharing app, then use those in a real project.

//So, launch Xcode now, and choose Create A New Xcode Project. You'll be shown a list of options, and I'd like you to choose iOS and Single View App, then press New. On the subsequent screen you need to do the following:

//--For project name plase enter "WeSplit"

//--For Organization Identifier you can enter whatever you wnat, but if you have a website you should enter it with the components reversed: "hackingwithswift.com" would be "com.hackiingwithswift". If you don't have a domain, make one up - "me.yourlastname.yourfirstname" is perfectly fin.

//--For Language please make sure you have Swift selected.

//--For User Interface please select SwiftUI.

//--Make sure all the checkboxes at the bottom are not checked.

//In case you were curious about the organization identifier, you should look t the text just below: "Bundle Identifier".  Apple needs to make sure all apps can be uniquely identified, and so it combines the orgganizational identifier - your website domain name in reverse - with the name of the project. So, Apple might have the organization identifir of "com.apple", so Apple's Keynote app might have the bundle identifier "com.apple/keynote".

//When you're ready, clock Next, then choose somewhere to save your project and open some code ready for you to edit.

//Later on we're going to be using this project to build our check splitting app, but for now, we're going to use it as a sandbox where we can try out some code.

//Let's get to it!!


//MARK: 2. Understanding the Basic Structure of a SwiftUI app

//When you create a new SwiftUI app, you'll get a selection of files, and maybe 100 lines of code in total. Most of the code doesn't do anythingn, and is just there ias placeholders to give you smoething to fill in - you can safely ignore it for now, but as you progress through this course that will hange.

//Inside Xcode you should see the following files in the space on the left, which is called the project navigator:

//--AppDelegate.swift contains code for managing your app. It used to be common to add code here, but there days, it's quite rare.

//SceneDelegate.swift contains code for launching one window in your app. This doesn't do much on iPhone, but on iPad - where users can have multiple instance of your app open at the same time - this is important.

//--ContentView.swift contains the initail user interface (UI) for your program, adn is where we'll be doing all the work in this project.

//--Assets.xassets is an asset catalot - a collecion of pictures that you want to use in your app. You can also add colors here along with app icons, iMessage stickers, and more.

//--LaunchScreen.storyboard is a visual editor for creating a small piece fo UI to show when your app is launching.

//--Info.plist is a collection of special values that describe to the system hwo your app works - which version it is, which device orientations you support, and more. Things that aren't code, but are still important.

//--Preview Content is a yellow group, with Preview Assets.xassets isnide - this is another asset catalog, this time specifically for example images you want to use when you're designing your user interfaces, to give you an idea of how they might look when the program is running.


//All our work for this project will take place in ContentView.swift, which Xcode will already ahve openend for your. It has some comments at the top - those things marked with two slashes at the strt - and they are ignored by Swift, so you can use them to add explanations about hwo your code works.

//Below the comments are ten or so lines of code:

/*
 import SwiftUI
 
 struct ContentView: View {
    var body: some View {
        Text("Hello World")
    }
 }
 
 struct ContentView_Previews: PreviewProvider {
    sttic var previews: some View {
        ContentView()
    }
}
 */

//Before we start writing our own code, it's worth going over what all that does, because a couple of things will be new.

//First, import SwiftUI tell Swift that we want to use all the functionality given to use by the SwiftUI framework. Apple provides us with many frameworks for things like machine learning, audio playback, image processing, and more, so rather than assume our program wants to use everthing ever we instead say which parts we want to use so they can be loaded.

//Seconds, struct ContentView : View creates a new struct called ContentView, saying that is conforms to the View protocol. View comes from SwiftUI, and is the basic rotocol that must be adopted by anything you want to draw on the screen - all text, buttons, images, and more are all view, including your own layout that combine other views.

//Thrid, var body: some View defines a new computed property called body, which has an interesting type: some View. This means it will return something that conforms to the View protocol, but that extra some keyword adds an impoprtant restriction: it much always be the same kind of view being returned - you can't sometimes return one type of thing, and other times return a different type of thing.

//We'll look at this feature more shortly, but for now just remeber that it means " one specefic sort fo view must be sent back from this property."

//The View protocol has only one requirement, which is that you have a computed property called body that returns some View. You can (and will) add more properties and methods to your view structs, but body is the only thing that's required.

//Fourth, Text("Hello World") creates a text view using the string "Hello World". Text views are simple pieces of static text that gets drawn onto the screen, and will automatically wrap across multiple lines as need.

//Below the ContentView struct you'll see a ContentView_Previews struct, which conforms to the PreviewProvider protocol. This pievce of code won't acutally form part of your final app that goes to the App Store, but is usually visible directy to the right of your code. You can customize the preview code if your want, and they will only affect the way the canvas shows your layouts - it won't change the actual app that gets run.

//Xcode can only show the canvas on macOS Cataline or later. If you don't see the canvas and are already running Catalina, go to the Editor menu and select Canvas.

//If your don't have Catalina, you'll need to run your code in the Simulator in order to see how it looks.

//Tip: Very often you''ll find that an error in your code stops Xcode's canvas from updating - you'll see something like "Automatic preview updating paused", and can press Resume to fix it. As you'll be doing this a lot, let me recommend an important shortcut: Option+Cmd+P does the same as clicking Resume.

//MARK: 3. Creating a Form

//May apps require users to enter some sort of input - it might be asking them to set some preferences, it might be asking them to confirm where tey want a car to pick them up, it might be to order food from a menu, or anything similar.

//SwifUI gives us a dedicateed view type for this purpose, called Form. Forms are scrolling lists of static controls like text and images, but can also include user interactive controls like text fields, toggle switches, buttons, and more.

//You can create a basic form just by wrapping the default text view inside Form, like this:

/*
 var body: some View {
    Form {
        Text("Hello World")
    }
 }
 */

//If you're using Xcode's canvas, you'll see it change quite dramatically: bfore Hello World was centered on a white screen, but now the screen is a light gray, and Hello World appears in the top left in white.

//What you're seeing here is the beginnings of a list of data, just like you'd see in the Settings app. We have one row in our data, which is the Hello World text, but we can add more freely and have them appear in our form immediately.:

/*
 Form {
    Text("Hello World")
    Text("Hello World")
    Text("Hello World")
 }
 */


//in fact, you can have as many things inside a form as you want, although if you intend to add more than 10 SwiftUI requires that you places things in groups to avoid problems.

//For example, this code shows ten rows of text just fine:

/*
 Form {
    Text("Hello World")
    Text("Hello World")
    Text("Hello World")
    Text("Hello World")
    Text("Hello World")
    Text("Hello World")
    Text("Hello World")
    Text("Hello World")
    Text("Hello World")
    Text("Hello World")
 }
 */

//But this attempts to show 11, which is not allowed:

/*
 Form {
    Text("Hello World")
    Text("Hello World")
    Text("Hello World")
    Text("Hello World")
    Text("Hello World")
    Text("Hello World")
    Text("Hello World")
    Text("Hello World")
    Text("Hello World")
    Text("Hello World")
    Text("Hello World")
 }
 */

//Tip: In case you were curious why 10 rows are allowed, but 11 is not, this is a limitation in SwiftUI: it was coded to understand how to add one thing to a form, how to add two things to a form, how to add three things, four things, five things, and more, all the way up to 10, but not beyond - they needed to draw a line somewhere. This limit of 10 children inside a parent actually applies everywhere in SwiftUI.

//If you wanted to have 11 things inside the form you should put som rows inside a Group:

/*
 Form {
    Group {
        Text("Hello World")
        Text("Hello World")
        Text("Hello World")
        Text("Hello World")
        Text("Hello World")
        Text("Hello World")
        Text("Hello World")
        Text("Hello World")
        Text("Hello World")
        Text("Hello World")
    }
    Group {
        Text("Hello World")
 

 */

//Groups don't actually change the way your user inteface looks , they just let us work around SwiftUI's limitation of ten child views iside a parent - that's text views inside a form, in this instance.

//If you want your form to look different then split its items into chunks, you should use the Section view instead. This splits your form into discrete visual groups, just like the Settings app does:

/*
 Form {
    Section {
        Text("Hello World")
    }
    
    Section {
        Text("Hello World")
        Text("Hello World")
    }
}
 */

//There's no hard and fast rule when you should split a form into sections - it's just there to group related items visually.
//MARK: 4. Adding a Naavigation Bar

//By default iOS allows us to place content anywhere on the screen, including under the system clock and the home indicator. This doesn't look great, which is why by default SwiftUI ensures components are placed in an area where they can't be covered by system UI or device rounded corners - an are known as the safe area.

//On an iPhone 11, the safe area spans the space from just below the notch down to just above the home indicator. You can see it in action with a user inteface like this one:

/*
 struct ContentView: View {
        var body: some View {
        Form {
            Section {
                Text("Hello World")
            }
        }
    }
}
 */

//Try running that in the iOs simulator - press the Play button in the top-left corner of Xcode's winder, or press Cmd+R.

//you'll see that the form strts below the notch, so by default the row in our form is fully visible. However, forms can also scroll, so if you swipe around in the simulator you'll find you can move the row up so it goes under the clock, making them both hard to read.

//A common way of fixing this is by placing a navigation bar at the top of the screen. Navigation Bars can have titles and buttons, and in SwiftUI they also give us the ability to display new vies when the user performs an action.

//We'll get to buttons and new views in a later project, but I do at least want to show you how to add a navigation bar and give it a title, because it makes our form look better when it scrolls.

//You've seen that we can place a text view, and that we can place the section iside a Form in a similar way. Well, we add a navigation bar in just the same way, except here it's called NavigationView.

/*
import Foundation
 import SwiftUI
 var body: some View {
        NavigationView {
        Form {
            Section {
                Text("Hello World")
                Text("Hello World")
            }
        }
    }
}
 */

//When you see that code in Xcode's canvas, you'll notice there's a large grey space at the top of your UI. Well, that;s our navigation bar in action, and you'll see the form slides under the bar as it moves to the top of the screen.

//You;ll usually want to put some sort of title in the navigation bar, and you can do that by attaching a modifier to whatever you;ve placed inside. Modifiers are regular methods with one small difference: they always return a new instance of whatever you use them on.

//Let's try adding a modifier to set the navigation bar title for our for:

/*
 NavigationView {
    Form {
        Section {
            Text("Hello World")
        }
    }
    .navigationBarTitle(Text("SwiftUI"))
 ]
 */

//When we attach the .navigationBarTitle() modifier to our form, Swift actually creates a new form that has a navigation bar title pluss all the existing contents you provided.

//When you add a title to a navigation bar, you'll notice it uses a large font for that title. You can get a small fornt with a slightly different callto navigationBarTitle():

//.navigationBarTitle("SwiftUI", displayMode: .inline)

//You can see how Apple uses these large and small titles in the Settings app: the first screens show their titles in small text.

//Because it's so common to use large titles, there's a shortcut version you can use that let's you use a plain text string rather than a text view:

//.navigationBarTitle("SwiftUI)

//MARK: 5. Modifying Program State

//There's a sayign among SwiftUI developers that our "views are a function of their state," but while that's only a handful of words, it might be quite meaninless to you at first.

//If you were playing a fighting game, you might have lost a few lives, scored some ponts, collected some treasure, and perhaps picked up some powerful weapons. In programming, we call these things state - the active collection of settings that describe how the game is right now.

//When you quit the game that state will get saved, and when you come back to the game later you can reload your game to get back to where you were. But while you're playing, that's all just callled state: all the integers, strings, Booleans, and more, all sotred in RAM to describe what you are doing right now.

//When we say SwiftUI's views are a function of their state, we mean that the way your unser intedace lools - the things that people can see and what they interact wtih - are determined by the state of your program. For example, they can't tap Continue until they have entered their name in a text field.

//The "sequence of events" approach menas it's very hard to srtore the state of an app, because the only way to get back the perfect state would be to play back the exact sequence of events the user just performed. This is why so may apps just won't go back to the last article you were reading, Twitter won't remember if you were part-way though typing a reply to someone, and Photoshop forgets any undo state you had stacked up.

//Let's put this into practice with a button, which in SwiftUI can be created with a title string and an action closure that gets run when the button is tapped:

/*
 struct ContentView: View {
    var tapCount = 0
 
    var body: some View {
        Button("Tap Count: \(tapCount)") {
            self.tapCount += 1
        }
    }
}
 */

//That code looks reasonable enough: create a button that says "tap Count" plus the number of times the button has been tapped, then add 1 to tapCount whenver the button is tapped.

//However, it won't build; that's not valid Swift code. You see, ContentView is a struct, which might be created as a constant. If you think back to when we learned about structs, that means it's  immutable - we can't chnge its vlues freely.

//When creating struct methods that want to change properties, we need to add the mutating keyword: mutating func doSomeWork(), for example. However, Swift doesn't let us make mutating computed properties, which means we can't write mutating var body: some View - it just isn't allowed.

//This might seem like we're stuck at an impasse: we want to be able to change the values while our program runs, but Swift won't let us becase our views are structs.

//Fortunately, Swift gives us a special solution caled a property wrapper: a special attribute we can place before our propertie that effectively gives them super-powers. In the case of storing simple program state like the number of times a button was tapped, we can use a property wrapper from SwiftUI called @State, like this::
/*
 struct ContentView: Vie {
    @State var tapCount = 0
 
    var body: some View {
        Button("Tap Count: \(tapCount)") {
            self.tapCount += 1
        }
    }
 }
 */

//That small change is enough to make our propgram work, so you can now build it and try it out.

//@State allows us to work around the limitations of structs: we know we can't change their properties becausestructs are fixed, but now @State allows that value to be stored separately bySwiftUI in a place that can be modified.

//Yes, it feels like a bit of a cheat, and you might wonder why wwe don't use classes instead - they can be modified freely. But trust me, it's worthwhile: as you progress you'll learn that SwiftUI destroys and recreates yor structs frequently, so keeping them small and simpole structs is important for perforance.

//Tip there are several ways of storing program state in SwiftUI, and you'll learn all of them. @State is specifically designed for simple properties that are stored in one view. As a resule, Apple recommends we add private access controls to those properties, like this: @State rpivate var tapCount = 0.
//MARK: 6. Binding State to User Interface Controls

//Swift's @State property wrapper lets us modify our view structs freely, which means as our program changes we can upfdate our view properties to match.

//However, things are a little more complex with user interface controls. For example, if you wanted to create an editable text box that users can type into, you might create a SwiftUI view like this one:

/*
 struct ContentView: View {
        var body: some View {
            Form {
                TextField("Enter Your Name")
                Text("Hello World")
        }
    }
 }
 */

//hat tries to create a form containing a text field and a text view. However, that code won't compile because SwiftUI wants to know where to store the text in the text field.

//Remember, views are a function of their state - that text field can only show something if it reflects a value stored in your program. What SwiftUI want is a string property in our struct that can be shown inside the text field, and will also store whatever the user types in the text field.

//So, we could change the code to this:

/*
 struct ContentView: View {
    var name = ""
 
    var body: some View {
        Form {
            TextField("Enter your name", text: name)
            Text("Hello World")
        }
    }
 }
 */

//That adds a name property then uses it to create the text field. However, that code still won't work because Swift needs to be able to update the name property to ametch whatever nthe user types into the text field, so you might use @State like this:

//@State private var name = ""

//But that still isn't enough,  and our code still won't compile.

//The problem is that Swift differentiates between "show the value of this property here" and "show the value of this property here, but write any changes back to the property."

//In the case of our text firl, Swift needs to make sure whatever is in the text is also in the name property, so that it can fulfill its promise that our views are a function of their state - that everything ithe user can see is just the visible representation of the structs and properties in our code.

//This is what's called a two-way binding: we bind the text field so that it shows the value of our property, but we also bind it so that any changes to the text field also update the property.

//In Swift, we mark these two-way bindings with a special symbol so they stand out: we write a dollar sign before them. This tells Swift that it should read the value of the property but also wirte it back as any changes happen.

//So, the correct version of our struct is this:

/*
 struct ContentView: View {
    @State private var name = ""
 
    var body: some View {
        Form {
            TextField("Enter your name", text: $name)
            Text("Hello World")
        }
    }
 }
 */

//Try running that code now - you should find that you can tap on the text field and enter your name, as expected.

//Before we move on, let's modify the text view so that is shows the user's name directly below their text field:

//Text("You name is \(name)")

//Notice how that uses name rather than $name? That's because you don't want a two-way biding here - we want to read the value, yes, but we don't want to write it back somehow, because that teext view won't change.

//So, when you see a dollar sign before a property name, remember that it creates a two-way binding: the value of the property is read, but also written

//MARK: 7. Creating Views in a Loop

//It's common to wnat to create several SwifUI views indside a loop. For example, we might want to loop over an array of names and have each one be a text vie, or loop over an array of menu items and have each one be shown as an image.

//SwiftUI gives us a dedicated view type for this purpose, called ForEach. This can loop over arrays and ranges, creating as many views as needed. Even better, ForEach doesn't get hit by the 10 view limi that would affect us if we had typed the views by hand.

//For each will run a closure once for every item it loops over, passing in the current loop item. For example, if we looped from 0 to 100 it would pass in 0, then 1, then 2, and so on.

//For example, this createes a form with 100 rows:

/*
 Form {
    ForEach(0 ..< 100) { number in
        Text("Row \(number)")
    }
}
 */

//Because ForEach passes in a closure, we can use ashorthand syntax for the parameter name, like this:

/*
 Form {
    ForEach(0..< 100) {
        Text("Row \($0)")
    }
 }
 */

//ForEach is particularly useful when working with SwiftUI's Picker view, which lets us show cvarious options for users to select from.

//To demonstrate this, we're going to define a view that:

        //1. Has an array of possible student names.

        //2. Has an @State propery storing the currently selected student.

        //3. Creates a Picker views asking users to select their favorite, using a two-way binding to the @State property.

        //4. Uses ForEach to loop over all possible student names, turning them into a text view.

//Here's the code for that:

/*
 struct ContentView: View {
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = 0
 
    var body: some view {
        VStack {
            Picker("Select your student", selection: $selectedStudent) {
                ForEach(0..< students.count)
                    Text(self.students[$0])
                }
            }
            Text("You chose: Student # \(students[selectedStudent])")
        }
    }
 }
 */

//There;s not a lot of code in there, but it's worth clarifying a few things:

    //1. The students array doesn't need to be marked with @State because it's a constant; it isn't going to change.

    //2. The selectedStudent property starts with the value 0 but can change, which is why it;s marked with @State.

    //3. The Picker has a label, "Select you student", which tells users what it does and also provides something descriptive for e screen readers to read aloud.

    //4. The Picker has a two-way binding to selectedStudent, which means it will strt showing a selection of 0 but update the property as the user moves the picker.

    //5. Inside ForEach we count from 0 up to (but excluding) the number of students in our array.

    //6. For each student we create one text view, showing student's name.

//We'll look art outher ways to use ForEach in the future, but that's enough fo this project.

//This is the final part of the overview for this project, so it's almost time to get started with the real code. If you want to save the examples you've programmed you should copy your project directory somewhere else.

//When you;re ready, put ContentView.swift back to the way it started when you first made the project, so we have a clean slate to work from:

/*
 import SwiftUI
 
 struct ContentView: View {
    var body: some View{
        Text("Hello World")
    }
 }
 
 struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
 }
        
 */
//MARK: Day 17 Project 1, Part Two

//As Immanual Kant said, "experience without theory is blind, but theory without experience is mere intellectual play." Yesterday we covered all the techniques required to build this app, so now it's time to turn all that head knowledge into a real, practical app.

//One of the things I love about SwiftUI is how easily this transition from theory to practice is - there are no surprises lurking around the corner and no epic extra things to learn along the way.

//Sure, I'll sneak a couple of tiny things just to keep you on your toes, but for the most part you already know everything you need to build this project, so now it's just a matter of seeing how things fit together.

//Today you have four topidcs to work thorugh, in which you'll apply your knowledge of Form, @State, Picker, and more.

//MARK: 1. Reading Text from the User with TextField

//We're building a check splitting app, which means users need to be able to enter the cost of their check, how many people are sharing the cost, and how much tip they want to leave.

//Hopefully you can see that means we need to add three @State properties, because there are three pieces of data we're expecting users to enter into our app.

//So, by adding these three properties to our ContentView struct:

/*
 @State private var checkAmount = ""
 @State private var numberOfPeople = 2
@State private var tipPercentage = 2
 */

//As you can see, that gives us an empty string for the check amount, a default value of 2 for the number of people, and a default value of 2 for the tip percentage.

//You might wonder why we're using strings for the check amount, when clerly an Int or Double would work better. Well, the reason is that we have no choice: SwiftUI must use strings to store text field values.

//Having two people be the default for splitting a check is sensible - it won't be right a lot of the time, but it's still a good default. But having a tip percentage of 2 might seem off: do we realy intend to leave a 2% tip?

//Well, no. Instead, we're using 2 here because we're going to use that to select values from a predetermined array of tip sizes, so you can see different picker styles in action.

//We need to store the list of possible tip sizes somewhere, so please add this fourth property beneath the previous three.

// let tipPercentages = [10, 15, 20, 25, 0]

//Now, you can see that a tip percentage of 2 actually means a 20% tip, because that's the values of tipPevcentages[2]

//We're going to build up the form step by step, starting with a text field where users can enter the value of their check.

//modify the body property to this:

/*
 var body: some View {
    Form {
        Section {
            TextField("Amount", text: $checkAmount)
        }
    }
 }
 */

//Will create a scrolling entry form of one section, which in trun contains one row: our text field. When you create text fields in forms, the first parameter is a string that gets used as the placeholder - gray text shown in side the text field, giving users an idea of what should be there. The second parameter is the two-way binding to our checkAmount property, which means as the user types that property will be updated.

//One of the great things about the @State property wrapper is that it automatically watched for changes and when something happens it will automatically re-invuke the body property. That's a fancy way of saying it will reload your UI to reflect the changedstate, ad it's a fundamental feature of the way SwiftUI works.

//To demonstate this, add a second section with a text view shoing the value of checkAmount, like this:

/*
 Form {
    Section {
        TextField("Amount", text: $checkAmount)
    }
    
    Section {
        Text("$\(checkAmount)")
    }
 }
 
 */

//We'll be making that show something ater on, but for now, please run the app in the simulator so you can try it yourself.

//Tap on the check amount text field, then enter some text - it doesn't need to be a number; anything will do. What you'll see is that as you type the text view in the second section automatically and immediately reflects your actions.

//This synchronization happens because:

    //1. Our text field has a two-way binding to the checkAmount property.

    //2. The checkAmount property is marked with @State, which automatically watches for changes in the value

    //3. When an @State property changes SwiftUI will re-invoke the body property (i.e. reload our UI)

    //4. Threrfore the text view will get the updated value of checkAmount.

//The final propject won't show checkAmount in that text view, but it's good enough for now. Before we move on though, I want to adress one important problem: When you tap to enter text into our text field, users see a regular alphabetical keyboard. Sure, they can tap a button on the keyboard to get to the numbers screen, but it's annoying and not really neverssary.

//Fortunately, text fields have a modifier that lets us force a different kind of keyboard: keyboardType(). We can give this a parameter specifying the kind of keyboard we want, and in this instance, either .numberPad or .decimalPad are good choices. Both of those keyboards will show the digits 0 to 9 for users to tap on, but .decimalPad also shows a decimal point so users can enter check amount like 32.50 rather than just whole numbers.

//So, you mdify your text field to this:

/*
 TextField("Amount", text: $checkAmount)
    .keyboardType(.decimalPad)
 
 */

//You'll notice I added a line break before .keyboardType and also indented it one level deeper than TextField - that isn't required, but it can help you keep track of which modifiers apply to which views.

//Go ahead and run the app now and you should find you can now only type numbers into the text field.

//Tip: The .numberPad and .decimalPad keyboards types tell SwiftUI to show digits 0 through 9 and optionally the ecimal point, but that doesn't stop users from entering other values. For example, if they have a hardware keyboard they can type what they like, and if they copy some text from elsewhere they'll be able to paste that into the text field no matter what it inside that text. That's OK, though - we'll be handling that eventuality later.


//MARK: 2. Creating Pickers in a Form

//SwiftUi's pickers serve multiple pruposes, and exactly how much thier check came to, and we want to add a picker to that so they can select how many people will share the check.

//Pickers, like text fields, need a two way binding to a propery so they can track their value. We alread made an @State property for this purpose, called numberOfPeople, so our next job is to loop over all the numbers from 2 to 99 and show them inside a picker, like this:

/*
 Section {
    TextField("Amount", text: $checkAmount)
        .keyboardType(.decimalPad)
    
    Picker("Number of people", sellection: $numberOfPeople) {
        ForEach(2 ..< 100) {
            Text("\($0) people")
        }
    }
 }
 */

//Now run the propgram in the simulator and try in out - what do you notice?

//Hopefully you spot several things:
    //1. There's a new row that says "Number of people" on the left and "4 people" on the right.

    //2. There's a gray disclosure indicatoor to the right edge, which is the iOS way of signaling that tapping the row shows another scren.

    //3. Tapping the row doensn't shwo another screen.

    //4. The row says "4 people", but we gave our numberOfPeople property a default value of 2.

//So, it's a bit of "two steps forward, two steps back" - we have a nice result, but it deosn't work and doesn't shwo the right information!

//We'll fix both of those, starting with the easy one: why does it say 4 people when we gave numberOfPeople the default value of 2? Well, when creating the picker we used a ForEach view like this:

//ForEach(2 ..< 100) {

//That counts form 2 up to 100, creating rows. What that means is that our 0th row - the first that is created contains "2 People", so when we gave numberOfPeople the value of 2 we were actually setting it to the third row, which is "4 people".

//So, although it's a bit brain-bending, the fact that our code shows "4 people" rather than "2 people" isn't a bug. But there is still a large bug: why does tapping on the row do nothing?

//If you create a picker by itself, outside a form, iOS will show a spinning wheel of options. Here, though, we've told SwiftUI that this is a form for user input, and so it has automatically changed the way our picker looks so that is doesn't take up so much space.

//What SwiftUI want to do - which is also why it's added the gray disclosure indicator on the right edge of the row - is show a new view with the options from our picker. To do that, we need to add a naviation view, which does two things: gives us some space across the top to place a title, and also lets iOS slide in new views as needed.

//So, directly before the form add NavigationView {, and after the form's closing brace add another closing brace. If you got it right, your code should look like this:

/*
 var body: some View {
    NavigationView {
        Form {
            //everything inside your form
        }
    }
 }
 */

//If you run the program, youll see a large gray space at the top, which is where iOS is giving us room to place a title. We'll do that in a moment, but first try tapping on the Number Of People row and you should see a new screen slide in with all the other possible options to choose from.

//You should see that "4 People" has a checkmark next to it because it's the selected value, but you can also tap a different number instead - the screen will automatically slide away again, taking the user back to the previous screen with theoir new selection.

//What you're seing here is the importance of what's called declarative user interface design. This means we say what we want rather than say how it should be done. We said we wanted a picker with some values inside, but it was down to SwiftUI to decide whether a wheel picker or the sliding view approach is better. It's chosing the sliding view approach pecause the picker is inside a form, but on other platforms and environments it could choose something else.

//Before we're done with this step, let's add a title to that new navigation bar. Give the form this modifier:

//.navigationBarTitle("WeSplit")

//Tip: it's tempting to think that modifier should be attached to the end of the NavigationView, but it needs to be attached to the end of the Form instead. The reason is that navigatoin views are vapable of showing many views as your program runs, so by attaching the title to the thing inside the navigation view we're allowing iOS to change titles freely. 
//MARK: 3. Adding a Segmented Control for Tip Percentages

//Now we're going to add a second picker view to our app, but this time we want something slightly different: we want a segmented control. This is a specialized kind of picker that shows a handful of options in a horizontal list, and it works great when you have only a small selection to choose from.

//Our form already has two sections I'd like you to add a third to show tip percentages:

/*
 Section {
    Picker("Tip Percentage", selection: $tipPercentage) {
        ForEach(0 ..< tipPercentages.count) {
            Text("\(self.tipPercentages[$0])%")
        }
    }
 }
 */

//That counts through all the options in our tipPerceentages array, converting each one iinto a text view. Just like the previous picker, SwiftUI will convert that to a single row in our list, and slide a new screen of options in when it's tapped.

//Here though, I want to show you how to use a segmented control instead, because it looks much better. So, please add this modifier to the tip picker:

//.pickerStyle(SegmentedPickerStyle())

//That should go at the end of the picker's closing brace, like this:

/*
 Section {
    Picker("Tip percentage", selection: $tipPercentage) {
        ForEach(0 ..< tipPercentages.count) {
            Text("\(self.tipPercentages[$0])%")
        }
    }
    .pickerStyle(SegmentedPickerStyle())
 }
 */

//If you run the rpogram now you'll see things are starting to come together: users can now enter the amount on their check, select the number of people, and select how much tip they want to leave - not bad!

//But things aren't quite what you think. One problem app developers face is that we take for granted that our app does what we intended it to do - we designed it to solve a particular problem, so we automatically know what everything means.

//Try to look at our user interface with fresh eyes, if you can:

    //--"Amount" makes sense - it's a box users can type a number into.

    //--"Number of people" is also pretty self explanatory.

    //--The label at the bottom is wehre we'll show the total, so right now we can ignore that.

    //--That middle section, though  - what are those percentages for?

//Yes, we know they are to select how much tip to leave, but that isn't obvious on the screen. We can - and should do better.

//One option is to add another text view directly before the segemented control, which we could do like thisL

/*
 Section {
    Text("How much tip do you want to leave?")
 
    Picker("Tip Percentage", selection $tipPercentage) {
        ForEach(0 ..< tipPecerntage.count) {
            Text("\(self.tipPercentages[$0])%")
        }
    }
    .pickerStyle(SegmentedPickerStyle())
 }
 
}
 */

//That work OK, but it doesn't look great - it looks like it's an item all by itself, rather than a label for the segmented control.

//A much better idea is to modify the section itself: SwiftUI lets us add views to the header and footer of a section, which in this instance we can use to add a small explanatory prompt. In fact, we can use the same text view we just creted, jsut moved up to be the secion header rather than a loose label inside it.

//Here's how that looks in code:

/*
 Section(header: Text("How much tip do you want to leave?")) {
    Picker("Tip percentage", selection: $tipPercentage) {
        ForEach(0 ..< tipPercentages.count) {
            Text("](self.tipPercentages[$0])%")
        }
    }
    .pickerStyle(SegmentedPickerStyle())
}
 */

//It's a small change to the code, but I think the end result looks a lot better - the text looks like a prompt for the segmented control directly below it. 
//MARK: 4. Calculating the Total per Person

//So far the final section has shown a simple text view with whatever check amount the user entered, but now it's time for the important part of this project: we want that text view to show how much each person needs to contribute to the payment.

//There are a few ways we could solve this, but the easiest one also happens to be the cleanest one, by which I mean it gives us cod that is clear and easy to understand: we're going to add a computed property that calculates the total..

//This needs to do a small amount of mathematics: the total amount payable per s=person is equal to the value of the order, plus the tip percentage, divided by the number of people.

//But before we can get to that point, we first need to pull out the values for how many poeple there are, what the tip percentage is, and the value of the order. That might sound easy, but there are some small wrinkles:

    //--As you've already seen, numberOfPeople is off by 2 - when it stores the value 3 it means 5 people.

    //--The tipPercentage integer stores an index inside the tipPercentages array rather than the actual tip percentage.

    //--The checkAmount property is a string that the user entered, which might be a valid number like 20, it might be a string like "fish", or it might even be empty.

//So, we're going to create a new computed property called totalPerPerson that will be a Double, and it willl start by getting those three values above.

//First, add the conputed property itself, just before the body property:

/*
 var totalPerPerson: Double {
    //calculate the total per person here
    return 0
 }
 
 */

//That sends back 0 so your code doesn't break, but we're going to replace the // calculate the total per person here comment with our calculations.

//Next, we can figure out how may people there are by readin numberOfPeople and adding 2 to it. Remember, this thing has the range 2 to 100, but it counts from 0, which is why we need to add the 2.

//So, strt by replacing // calculate the total per person here with this:

//let peopleCount = Double(numberOfPeople + 2)

//you'll notice that converts the resulting value to a Double so we can add everything up and divide it without losing acccuracy.

//Next we need to figure out the actual tip percentage. Our tipPercentage property stores the value the user chose, but that's actually just a position in the tipPercentages array. As a result, we need to look in tipPercentages to figure out what they chose, and again convert it to a Double so we can keep all our precision - add this below the previous line:

//let tipSelection = Double(tipPercentage[tipPercentage])

//The final number we need for our calculation is the value of their check. Now, if you remember this is acutally a string right now, because it's used as a two-way binding to a text field. Although we wrote code to show only a decimal pad keyboard, there's nothing stopping creative users from entering invalid values in there, so we need to be careful how we handle it.

//What we want to have is another Double of the check amount. We actually have a string that may or ay not conatin a valid Double: it might be 22.50, it might be an empty string, or it might be the complete works of Shakespeare. It's a string - it can be pretty much anything.

//Fortunately, Swift has a simple way of converting a string to a Double, and it looks like this:

/*
 let stringValue = "0.5"
 let doubleValue = Double(stringValue)
 */

//That might look easy enough, but there's a catch: the type of doubleValue ends up being Double? and not Double - yes, it's an optional. You see, Swift can't know for sure that the string contains something that can be safely converted to a Double, so it uses optionality: if the conversion was successful then our optional will contain the resulting value, but if the string was something invalid ("Fish", the complete works of Shakespeare, etc) then the optional will be set to nil.

//There are several ways we could handle the optionality here, but the easiest is to use the nil coalescing operator, ??, to ensure there's always a valid value.

//Please add this code to the totalPerPerson computed property, below the revious two:

//let orderAmount = Double(checkAmount) ?? 0

//That will attempt to convert the checkAmount int a Double, but if that fails for some reason will use 0 instead.

//Now that we have our three input values, it's time to do our mathematics. this takes another three steps:

    //1. We can calculate the tip value by dividing orderAmount by 100 and multiplying it by tipSelection.

    //2. We can return the amount per person by adding the tip value to orderAmount.

    //3. WWe can figure out the amount per person by dividing the grand total by peopleCunt.

//Once that's don, we can return the amount per person and we're done.

//Replace return 0 in the property with this:

/*
 let tipValue = orderAmount / 100 * tipSelection
let grandTotal = orderAmount + tipValue
 let amountPerPerson = grandTotal / peopleCount
 
 return amountPerPerson
 
 */

//If you;ve followed evrything correctly your code should look like this:

/*
 var totalPerPerson: Double {
    let peopleCount = Double(numberOfPeople + 2)
    let tipSelection = Double(tipPercentages[tipPercentage])
    let orderAmount = Double(checkAMount) ?? 0
 
    let tipValue = orderAmount / 100 * tipSelection
    let grandTotal = orderAmount / 100 * tipSelection
    let amountPerPerson = grandTotal / peopleCount
 
    return amountPerPerson
 */

//now that totalPerPerson gives us the correct value, we can change the final section in our table so it shows the correct text.

//Replace this:

/*
 Section {
    Text(\(checkAmount)")
 }
 
 */

//With this:

/*
 Section {
    Text("$\(totalPerPerson)")
 }
 */

//Try running the app now, and see what you think. You should find that because all the values that make up our total are marked with @State, changing any of them will cause the total to be recalculated automatically.

//Hopefully you're seeing for yourself what it means that SwiftUI' views are a function of their state - when the state changes, the views automatically update to match.

//Before we're done, we're going to fix a small issue with our user interface, which is the way the total price is shown. We're using a Double for our amount calculations, which means Swift is giving us much more precision than we need - we expect to see somthing like $25.50, but instead we see $25.500000.

//We can solve this by using a neat string interpolation feature that SwiftUI adds: the ability to decide how a number ought to be formatted inside the string. This actually dates way back to the C programming language, so the syntax is a little odd at first we write a string called a specifier, giving it the value "%.2f" That's C's sytax to mean "a two-digit floating-point number."

//Very roughly, "%f" means any sort of floating point number," which in our case will be the entire number. An alternative is "%g", which does the same thing except it removes insignificant zeroes from the end - $ 12.50 would be written as $12.5. Putting ".2" into the mix is what asks for two digits after the decimal point, regardless of what they are. SwiftUI is smart enough to round those intelligently, so we still get good precision.

//You can read more about these C-style format specifiers on Wikipedia:
//https://en.wikipedia.org/wiki/Printf_format_string - we aren't going to any others, so it's just there itf you want to satisfy your curiosity!

//Anyway, we want the amount per person to use our new format specifier, so please modiffy the total text view to this:

//Text("$\(totalPerPerson, specifier: "%.2f")")

//Now run our project for the last time - we're done!

//MARK: Day 18 Project 1, Part Three

//You just finished your first SwiftUI app, and all being well you were surprised by how easy it was. you might even be wondering why I spent so long talking about structs, closures, optionals, and more, when really we ended up doing some fairly simple code.

//Well, first keep in mind that this is only the first project, and I kept it deliberately simple so you can get moving quickly with your own code. Trust me, thigns will get more complex - in fact tomorrow you'll be set free with your own project, so don't get too comfortable!

//Second, though, you have been using advanced features. In fact, without realizing it you've actually been using all the most advanced features Swift has to offer. We've actually been using closures all the time - just look at code like this:

/*
 Picker("Tip percentage", selection: $tipPercentage) {
    ForEach(0 ..< tipPercentages.count) {
        Text("\(self.tipPercentages[$0])%")
    }
 }
 */

//Did you notice that $0 in there? That's shorthand synta for closure parameters, because we're inside a closure. That's the same reason we need self in the self.tipPercentages - we're using closures extensively, even though you might now have noticed.

//Anyway, now that the app is complete it's time for a quick recap of what you've learned, a short test to make sure you've understood what was taught, then your first challenges - exercises designed to get you writing your own code as quickly  as possible.

//I do not provide answers to these challenges. This is intentional: I want you to figure it out yourself rather than just looking at someone else's work. As Marvin Phillips said, "the difference between try and triumph is a little umph."

//Today you shold work through to wrap up chaperter for project 1, complete its review, then work through all three of its challenges.

//MARK: WeSplit Wrap Up

//You've reached the end of your first SwiftUI app: good job! We've covered a lot of ground, but I've also tried to go nice and slowly to make sure it all sinks in - we've got lots more to cover in future projects, so taking a little extra time now is OK.

//In this project you learn about the basic structure of SwiftUI apps, how to build forms and sections, creating navigation views and navigation bar titles, how to store program state with the @State property wrapper, how to create views in a loop using ForEach. Even better, you have a real project to show off for your efforts.

//MARK: REVIEW WHAT YOU'VE LEARNED

//Anyone can sit through a tutorial, but it takes actual work to remember what was taught. It's my job to make sure you take as much from these tutorials as possible, so I've prepared a short review to help you check your learning.

//MARK: CHALLENGE

//One of the best ways to learn is to write your own code as often as possible, so here are three ways you should try extending this app to make sure you fully understand what's going on:

//1. Add a header to the third section saying "Amount per person"

//2. Add another section showing the total amount for the check - i.e., the original amount plus tip value, without dividing by the number of people.

//3. Change the "Number of people" picker to be a text field, making sure to use the correct keybord type.
//MARK: Review for project 1: WeSplit

//Once you're done, tell other people: you've completed your first SwiftUI project, you've passed the test, and you've even extended it with your own code.

//You should be proud of what you've accomplished - good job!


