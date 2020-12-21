#  Fun with GeometryReader

Following the blog posts of Big Mountain Studio on Big Mountain Climber's Camp:

- [Part 1: Getting Started with the SwiftUI GeometryReader](https://www.bigmountainstudio.com/members/posts/12948-getting-started-with-the-swiftui-geometryreader-part-1)
- [Part 2: SwiftUI GeometryReader: Where am I?](https://www.bigmountainstudio.com/members/posts/12988-swiftui-geometryreader-where-am-i-part-2)
- [Part 3: Parallax Scrolling](https://www.bigmountainstudio.com/members/posts/13048-swiftui-geometryreader-parallax-scrolling-part-3)
- [Part 4: What's your size?](https://www.bigmountainstudio.com/members/posts/13066-swiftui-geometryreader-what-s-your-size-part-4)
- [Part 5: Sticky Header When Scrolling](https://www.bigmountainstudio.com/members/posts/13099-swiftui-geometryreader-sticky-header-when-scrolling-part-5)

Since the tutorial has been created in September 2019 (and today is December 2020), there has been a change in the behaviour of the `GeometryReader`: It does not layout it's children automatically in the center, but it places them in the top left of its area. To fix this I had to add some `.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)` in a few spots.
