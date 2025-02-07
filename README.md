# SwiftUI Navigation Concept

This approach consists of three types of components:

## 1. Features

Features are logically complete units of functionality that can be displayed to the user. Typically, they represent screens. Each feature has its own composer, which helps assemble the feature. When a feature is large, it's convenient to move its creation to a separate place. However, in your project, you can omit this if you prefer.

## 2. Navigation Components

Navigation components are essentially generic navigation state holders. They keep track of the current navigation state. You can always add your own navigation components if needed.

## 3. Flows

Flows are components responsible for managing navigation and creating features. They react to events occurring within features and use navigation components to perform navigation. Flows can be very simple, containing just a couple of features, or highly complex, encompassing dozens of them. The level of granularity is up to you, as it directly impacts the reusability of your flows—the larger the flow, the harder it is to reuse.

## Notes

It is crucial to understand that features do not contain any navigation code. Instead, they emit internal events that flows process. This makes features highly reusable across different contexts, allowing you to create new flows for specific use cases without modifying the existing feature code, thus adhering to the Open-Closed Principle (OCP).

Another key advantage is that navigation components do not depend on any other code, making them reusable even in different projects.
