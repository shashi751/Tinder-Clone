**Tinder - Left and Right Swipe Animation in SwiftUI**

This project showcases a Tinder-style left and right swipe animation using SwiftUI, built to replicate the iconic card-swiping interaction. It leverages SwiftUI's power and new iOS 17 features to create smooth animations and transitions.

**Features:**

SwiftUI Framework: Fully built using SwiftUI, embracing declarative UI development.

Card View with ZStack: The cards representing user profiles are displayed using a ZStack, creating a layered view of user images.
Data Structure:

CardView is the core view component for displaying user profiles.

The data model consists of Card and User, where each user can have multiple profile pictures.

The data source is a dummy model for demonstration purposes, allowing easy customization.

**Swipe Interaction:**
Swipe behavior is achieved by moving the x-offset of the card based on the drag position.
The swipe includes dynamic calculation of rotation degrees and smooth animations for the transition.
iOS 17 Animation Effects: Utilizes the latest animation improvements from iOS 17 to provide a smooth, natural swipe experience with added image snapping.

**How It Works:**
The drag gesture captures the swipe direction and translates it into an offset, which moves the card view.
Rotation is calculated based on the swipe drag, enhancing the visual effect.
Once the user swipes a card far enough, it either dismisses to the left or right with smooth animations.

**Video**

https://github.com/user-attachments/assets/7d8fac82-0db6-4537-b111-c29c908cf005


**Screenshots:**

![366023456-2df6413b-651a-4957-abc6-bc670ccdfa49](https://github.com/user-attachments/assets/3591ab4c-c1ba-4283-832f-615aab7fe775)
![366023441-545de950-a318-4fff-803b-b089c72f4f36](https://github.com/user-attachments/assets/c691e93b-1866-459e-b7ff-f886f356d319)
![366023283-759912f6-35d4-474c-9e50-57f32c2ad26c](https://github.com/user-attachments/assets/f8988373-49ee-4a9f-adb2-b3d7805d8e3f)
![366023209-10d1d770-ba88-4c10-9625-171c6325e0e2](https://github.com/user-attachments/assets/a5898d51-4458-4b61-a57a-6b4bb935366c)
![366023164-5c833303-7f06-4331-9b55-84ae1957dce1](https://github.com/user-attachments/assets/f9419ad6-9ed6-4ae8-8c26-994d36f07890)


**Demo:**
Feel free to clone the repo and play around with the code! The data source can easily be swapped with a real model for production use.
