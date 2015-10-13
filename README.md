# trickle

What is the point? 
  * Create an app that allows for you to create good habits by
    clearly stating small things that will hopefully trickle into
    making you a better person.

This app was inspired by this [blog post.](http://randsinrepose.com/archives/the-trickle-list/)

# Todo list

* add ability to add tasks to list
* add checkbox to click when task has been completed that day.
* add 24/hr time constraints for completion of tasks 
* add graphs / stats
* add user capabilities.
* suggest new trickles based on other users with similiar trickles



### Basic Design

#### Users
> name
> email
> password_digest
> timestamps
> Habit_id

#### Habit
> name
> description
> user_id
> Start Date.
> End Date ( 30 days from today )
> Icon

#### Trickle
> Habit Id
> Completed? 
> Date

##### Icon
> Icon Name ( font awesome Icon Name)
> Habit Id


------------------

##### Home Page
When Not signed in:
> Explanation of Trickle
> User Sign up / Sign in.

When Signed In:
> Dashboard with current user Velocity / other pertinant info. 
> Current Habits displayed on a calendar
  > Completion would be denoted by the displaying of an icon on
  > calendar. 
> New habit button

##### Specific Habit page
> Longest running trend.
> Number of missed days
> Number of completed days.
> Number of days remaining.

##### New Habit Page
> Name
> Description
> Icon
> Delete actions, Edit Actions.

##### User Sign up Page
> Name
> Email
> password
> password confirmation
