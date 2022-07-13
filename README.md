# Hashketball

## Learning Goals

- Practice iterating over nested hashes.

## Instructions

Welcome to Hashketball! In this lab, you will be implementing methods to work
with a nested data structure. There's a method `#game_hash` that has been
provided to you in this lab that will return a nested hash, which you'll be
working with as you write methods to solve the deliverables below.

We also strongly recommend that you read the **_entire_** README before you
start coding. We're going to show some tips and tricks that make the coding a
lot easier... but only if you read through to the end.

Code your solution in `hashketball.rb` following the steps below. Keep
`game_hash` as is, using the other methods to access information.

This lab is the largest and most complex yet, so set aside some time for this
one. Remember all the tricks you learned from working with objects in JavaScript
— even though the syntax here is a bit different, the same problem solving
techniques are still just as important.

## Building Methods

To get started, ensure you can read data out of the nested data structure with
simple, basic `[]` calls.

You can confirm this by starting IRB from this lesson's main directory and
requiring the `hashketball.rb` file with `require './hashketball.rb'`:

```console
2.6.1 :001 > require './hashketball.rb'
=> true
```

From here, you can interact with the `game_hash` method. Calling
`game_hash[:home][:team_name]`, for example, should return `"Brooklyn Nets"`.
This is because `game_hash` returns a hash - we can chain `[]` calls on the hash
it returns.

Write helper methods with descriptive names so it's easier to work with the data.
For example, you can create a method called `all_players` that gets the players
of both the home and away teams.

Be flexible; work from what you have to where you want to go; or, work backward;
or, make a midpoint between what you have and what you need to have

### Working with Nested Data Structures

Run `learn test`. There are a whole bunch of methods that are expected to exist.
The first one is `num_points_scored`. But there's so much output. Let's make it
more manageable.

We can run this method's test, again by using the [-e][example] or `--example`
flag: `rspec spec/hashketball_spec.rb -e num_points_scored`.

> **PRO TIP**: You can use this strategy to run small chunks of the test suite.
> Simply look in the `spec/hashketball_spec.rb` file and find a `describe`
> block. You can run all the tests under it by using that block's `String` as
> an argument to `-e`.

That `num_points_scored` method produces an _insight_. Here's a specification:

- Build a method, `num_points_scored` that takes in an argument of a player's
  name and returns the number of points scored for that player.

Why don't we define that method and have it return `game_hash`?

```rb
def num_points_scored
  game_hash
end
```

Run the test again. Sure enough, our method fails (unsurprisingly), but the test
results have changed. Continue to add code to get `num_points_scored` working.
If you need to "invent" helper methods, to help you process `game_hash`, do so!
Here's some sample thought process:

> Think about where in the hash you will find a player's `:points`. How can you
> iterate down into that level? Think about the return value of your method.
> Remember that `.each` returns the original collection that you are iterating
> over. How can you return the number of points for a particular player? How
> would we have done it with a simple `while` loop? Which Enumerable helps
> here? Is a while-loop better than an Enumerable? _Etc._

If you repeat the process we just explored together, you will be able to
deliver more complex methods to satisfy tests. Find a failing test, build a
"skeleton method," iterate on the code, get success, and move on. This is the
way software is "grown" in the real world.

### Additional Methods

- Build a method, `shoe_size`, that takes in an argument of a player's name and
  returns the shoe size for that player.

  - Think about how you will find the shoe size of the correct player. How can
    you check and see if a player's name matches the name that has been passed
    into the method as an argument?

- Build a method, `team_colors`, that takes in an argument of the team name and
  returns an `Array` of that team's colors.

- Build a method, `team_names`, that operates on the game `Hash` to return an
  `Array` of the team names.

- Build a method, `player_numbers`, that takes in an argument of a team name and
  returns an `Array` of the jersey numbers for that team.

- Build a method, `player_stats`, that takes in an argument of a player's name
  and returns a hash of that player's stats.

  - Check out the following example of the expected return value of the
    `player_stats` method:

  ```rb
  player_stats("Alan Anderson")
  # => {
  #      :player_name => "Alan Anderson",
  #      :number => 0,
  #      :shoe => 16,
  #      :points => 22,
  #      :rebounds => 12,
  #      :assists => 12,
  #      :steals => 3,
  #      :blocks => 1,
  #      :slam_dunks => 1
  #    }
  ```

- Build a method, `big_shoe_rebounds`, that will return the number of rebounds
  associated with the player that has the largest shoe size. Break this one down
  into steps:

  - First, find the player with the largest shoe size
  - Then, return that player's number of rebounds
  - Remember to think about return values here.

**Bonus Questions:**

If you would like to take on a few more challenges, there are a few more things
you can do. There are not tests for this content - these are provide for
additional practice working with hash data.

Define methods to return the answer to the following questions:

1. Which player has the most points? Call the method `most_points_scored`.

2. Which team has the most points? Call the method `winning_team`.

3. Which player has the longest name? Call the method `player_with_longest_name`.

**Super Bonus:**

1. Write a method that returns true if the player with the longest name had the
   most steals. Call the method `long_name_steals_a_ton?`.

## "I am completely stuck"

This is a challenging lab. Process, small methods, helper methods. All of
these are tools that are designed to get you un-stuck.

One last tool is the "Pry" debugging library - it can be a real help.

At the top of `hashketball.rb` put the line `require "pry"`.

Using Pry, when running RSpec tests with the `learn test` command, we can pause
the execution of our Ruby code. This allows us to step into the code and play
with any available variables or methods that are in scope.

We tell Ruby where to pause by writing `binding.pry` in our code. When Ruby sees
that magic word, it will stop execution and hand things over to a REPL called
Pry. It's there that we can do the inspection.

Below is an example start for `num_points_scored` with `binding.pry` included:

```rb
def num_points_scored(player_name)
  binding.pry
  game_hash.each do |location, team_data|
    #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
    binding.pry
    team_data.each do |attribute, data|
      #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
      binding.pry

      #what is 'data' at each loop throughout .each block? when will the following line of code work and when will it break?
      data.each do |data_item|
          binding.pry
      end
    end
  end
end
```

At every place Ruby sees `binding.pry`, it will stop the program's execution.
While the program is stopped, you can print out variables that are in scope. At
the first `binding.pry` in the example above, you can type in `player_name` and
have the value printed out by Pry. At the second `binding.pry`, you will be able
to access `player_name`, `location`, and `team_data` and have those values
printed out by `pry`. When you're done at one binding, type `exit` and the code
will resume running (until it hits another `binding.pry`). If you're all done
with a given `pry` session `exit-program` or `exit!` will close Pry and return
you to the command-line.

When running `learn test`, if any `binding.pry` lines are present in the
solution, Pry will still kick in so you may want to remove them once you think
you've solved a method.

## Conclusion

This is a new frontier for you! You are now using powerful tools of Ruby
to transform a nested data structure that you made from non-computer-ready
data to produce insights. You've made huge strides in becoming a really solid
developer in the procedural programming paradigm. This is a huge moment.
Celebrate it!

Believe it or not, the code that put rockets in space and mankind on the Moon
were only slight variations on this style of programming. You've learned
something really powerful!

## Resources

- [RSpec's example flag][example]

[example]: https://relishapp.com/rspec/rspec-core/v/2-12/docs/command-line/example-option#match-on-one-word
