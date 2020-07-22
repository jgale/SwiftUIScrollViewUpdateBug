I've filed a Feedback with Apple for this issue: FB8101550

# Bug Description and Steps to Reproduce

Create a very simple app that uses a ScrollView() as the main component in a View’s body. Have that ScrollView()’s items come from a ForEach() block that iterates over an array, either @State or a @Published array in an @ObservedObject. Update that array in .onAppear() (or via anything else, e.g. network request that updates a @Published property).


Expected behaviour: The app should immediately update with objects 1 through 5 on launch.
Actual behaviour: The app doesn’t update until you tap on the screen, and then it updates.

# Workarounds

There are a few different workarounds I've seen to fix this:

1. If the ScrollView() is in a VStack() the problem doesn't happen.
2. If there is a Rectangle() view of negligible height in the ScrollView(), the bug doesn't happen and it updates immediately.
3. If the array that the ForEach iterates over starts off with an oject in it instead of empty, the bug doesn't happen and it updates immediately.