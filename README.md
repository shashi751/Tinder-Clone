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

![366023456-2df6413b-651a-4957-abc6-bc670ccdfa49](https://github.com/user-attachments/assets/d8155485-22c4-43d8-935a-35b58b218c23)

![366023441-545de950-a318-4fff-803b-b089c72f4f36](https://github.com/user-attachments/assets/e9fe0b70-da8b-4325-86a9-e14018d5df8e)

![366023283-759912f6-35d4-474c-9e50-57f32c2ad26c](https://github.com/user-attachments/assets/072b928a-20c4-4068-83fa-a0719c582cec)

![366023209-10d1d770-ba88-4c10-9625-171c6325e0e2](https://github.com/user-attachments/assets/fd499a5f-9730-4ea2-b1ef-8c275e0677c8)

![366023164-5c833303-7f06-4331-9b55-84ae1957dce1](https://github.com/user-attachments/assets/542992ae-fa01-46ea-ba3f-f19b7f62618b)


**Demo:**
Feel free to clone the repo and play around with the code! The data source can easily be swapped with a real model for production use.
