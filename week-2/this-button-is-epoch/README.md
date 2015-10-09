

## This Button Is Epoch

1. Create a simple view that connects an IBAction to a UILabel

## Introduction

#### What is epoch time?
  > The Unix epoch (or Unix time or POSIX time or Unix timestamp) is the number of seconds that have elapsed since January 1, 1970 (midnight UTC/GMT), not counting leap seconds (in ISO 8601: 1970-01-01T00:00:00Z). Literally speaking the epoch is Unix time 0 (midnight 1/1/1970), but 'epoch' is often used as a synonym for 'Unix time'. Many Unix systems store epoch dates as a signed 32-bit integer, which might cause problems on January 19, 2038 (known as the Year 2038 problem or Y2038).

  >-[The Epoch Converter](http://www.epochconverter.com)

## Instructions

Open the `EpochButton.xcworkspace` file and navigate to the `Main.storyboard` file.

1. Drag on a View Controller object. Make it the initial view controller and set the simulated size metric to something familiar, such as "iPhone 4.7-inch".

2. Create a new subclass of `UIViewController` called`FISEpochViewController`. Set the class of your view controller in the storyboard to `FISEpochViewController`.

3. Add a `UILabel` centered in the top half of the view controller's canvas, then set the accessibility label of this `UILabel` to `epoch label` and make sure the accessibility enabled box is checked. Connect this label as an outlet property on `FISEpochViewController`; name it something appropriate.

4. Add a `UIButton`centered in the bottom half of the view controller's canvas, then:
  * set the button's title to `Epoch Button!`,
  * set the accessibility label to `epoch button` and make sure the accessibility enabled box is checked, and
  * connect the button's IBAction to the `FISEpochViewController`; name it something appropriate.

6. Write the implementation for your IBAction so that when the `UIButton` is tapped, the `UILabel`'s text is updated to the result of calling the following method (which you should insert into the `FISEpochViewController.m` file as a helper method):

```objc
- (CGFloat)epochMethod {
    return [[NSDate date] timeIntervalSince1970];
}
```

**Hint:** *If this method returns a float value, how can we display that value as a string?*

If you connected this action correctly, the lab's single test should pass.