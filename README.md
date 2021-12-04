# Take a ten minute walk

Create a function that will return true if the walk will take you exactly ten minutes and will return you to your starting point.

## Requirements

You are meeting a friend in New York City, where all roads are laid out in a perfect grid. You arrived ten minutes too early to the appointment, so you decided to take the opportunity to go for a short walk.
The city provides its tourists with a Walk Generating App on their phones -- every time you press the button it sends you an array of one-letter strings representing directions to walk. e.g. ['n', 's', 'w', 'e']

You always walk one block at a time in a direction and you know it takes you one minute to traverse one city block, so create a function that will return true if the walk the app gives you will take you exactly ten minutes (you don't want to be early or late!) and will, of course, return you to your starting point. Return false otherwise.

Note: you will always receive a valid array containing a random assortment of direction letters ('n', 's', 'e', or 'w' only). It will never give you an empty array (that's not a walk, that's standing still!).

## Acceptance Criteria

```
ten_minute_walk?(['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w']) # => true
ten_minute_walk?(['w', 's', 'e', 'n', 'n', 'e', 's', 'w', 'w', 'w']) # => false
ten_minute_walk?(['w', 's', 'e', 's', 's', 'e', 's', 'w', 'n', 'n']) # => false
ten_minute_walk?(['w', 's']) # => false
```

## Plan

| Input ten_minute_walk?(directions)                           | Output | Description                       |
| ------------------------------------------------------------ | ------ | --------------------------------- |
| ['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w']           | true   | w = e && s = n                    |
| ['n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n']           | false  | one direction only                |
| ['w', 's', 'e', 'n', 'n', 'e', 's', 'w', 'w', 'w']           | false  | 4w 2e 2s 2n more WEST than EAST   |
| ['w', 's', 'e', 's', 's', 'e', 's', 'w', 'n', 'n']           | false  | 2w 2e 4s 2n more SOUTH than NORTH |
| ['e', 's', 'w', 'n', 'n', 'w', 's', 'e', 'e', 'e']           | false  | 4w 2e 2s 2n more EAST than WEST   |
| ['w', 'n', 'e', 'n', 'n', 'e', 'n', 'w', 's', 's']           | false  | 2w 2e 4s 2n more NORTH than SOUTH |
| ['w', 's']                                                   | false  | less than a 10 minute walk        |
| ['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w', 'w', 's'] | false  | greater than a 10 minute walk     |

## Notes

This is post Makers Academy where I returned to full-time employment and have limited time to code. I've given myself small coding challenges by revisiting TDD in Ruby from the Makers Academy process workshops.

I attempted this during Makers Academy course and looking at the previous attempt I've noticed the following improvements:

- added an additional test
