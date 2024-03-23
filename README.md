# Project 4 - *MemoryGame*

Submitted by: **Sai Mannava**

**Memory Matching** is an app that tests memory by matching cards in sets of 2 being flipped.

Time spent: **6** hours spent in total

## Required Features

The following **required** functionality is completed:

- [X] App loads to display a grid of cards initially placed face-down:
  - Upon launching the app, a grid of cards should be visible.
  - Cards are facedown to indicate the start of the game.
- [X] Users can tap cards to toggle their display between the back and the face: 
  - Tapping on a facedown card should flip it to reveal the front.
  - Tapping a second card that is not identical should flip both back down
- [X] When two matching cards are found, they both disappear from view:
  - Implement logic to check if two tapped cards match.
  - If they match, both cards should either disappear.
  - If they don't match, they should return to the facedown position.
- [X] User can reset the game and start a new game via a button:
  - Include a button that allows users to reset the game.
  - This button should shuffle the cards and reset any game-related state.
 
The following **optional** features are implemented:

- [X] User can select number of pairs to play with (at least 2 unique values like 2 and 4).
  * (Hint: user Picker)
- [X] App allows for user to scroll to see pairs out of view.
  * (Hint: Use a Scrollview)
- [X] Add any flavor you’d like to your UI with colored buttons or backgrounds, unique cards, etc. 
  * Enhance the visual appeal of the app with colored buttons, backgrounds, or unique card designs.
  * Consider using animations or transitions to make the user experience more engaging.

The following **additional** features are implemented:

- [ ] List anything else that you can get done to improve the app functionality!

## Video Walkthrough

Here's a walkthrough of implemented user stories:

Here is a reminder on how to embed Loom videos on GitHub. Feel free to remove this reminder once you upload your README. 

[Guide]](https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExeWE2MXQ2emZ2MzRoNHc5N2xyaXp3Mmgybm43cXV4c3B6ZWl5aWdwOSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/LlxzCxtWJP4vCRbVzg/giphy.gif) .

## Notes

It was difficult to get the cards to dissapear after their values matched but the logic for CardView worked after changing the indexes for cards.
## License

    Copyright [2024] [Codepath]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
