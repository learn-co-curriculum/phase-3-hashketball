# Hashketball

## Learning Goals

* Practice building nested hashes.
* Practice iterating over nested hashes.

## Instructions

This lab is about as representative of real-life tasks as a programmer as you
can get: data on paper or in tables needs to be given to a programming language
in order to deliver _insights_.

You're going to perform an analysis on NBA game. You've been provided some
basic game data in a series of tables. You're going to ask Ruby to help you
answer some questions about the game.

This challenge comes in three major pieces:

1. Build an NDS from text and data stored in tables
2. Understand your own NDS
2. Process the NDS to produce _insights_ about how various players performed

While you've worked with NDS using simple looping and Enumerables, you've never
before had to _create_ such a complex NDS and _process_ it as well. Work where
you processed `Array` of `Arrays` or `Array`s of `Hash`es would be wise to
freshen up on as preparation. Take it in pieces, remember your training, and
you'll get there!

Code your solution in `hashketball.rb` following the steps below. Because this
challenge is so big, we'll show you new techniques for running only small
chunks of the test suite so that you're not overwhelmed by all the test data!

### Step 1: Building the Hash

The first method you will define is called `game_hash`. This method contains and
returns a hash nested in the following manner:

* The top level of the hash has two keys: `:home`, for the home team, and
  `:away`, for the away team.
* The values of the `:home` and `:away` keys are hashes. These hashes have the
  following keys:
  * `:team_name`
  * `:colors`
  * `:players`
* The `:team_name` key points to a string of the team name.
* The `:colors` key points to an array of strings that are that team's colors.
* The `:players` key points to an `Array` of `Hash`es. Each `Hash` in the `Array`
  should contain the players' stats. Each stat should be a key that points to
  a value for that stat. The keys should be:
  * `:number`
  * `:shoe`
  * `:points`
  * `:rebounds`
  * `:assists`
  * `:steals`
  * `:blocks`
  * `:slam_dunks`
* The data for each player is provided in a table below.

Home Team:

* team name: Brooklyn Nets
* colors: Black, White
* players:

|          Stat          | Info | Info |  Info | Info | Info   |
|:------------------:|:-------------:|:------------:|:------------:|:-------------:|:-------------:|
| **Player Name**    |  Alan Anderson| Reggie Evans | Brook Lopez  | Mason Plumlee | Jason Terry   |
| **Number**         | 0             | 30           | 11           | 1             | 31            |
| **Shoe**           | 16            | 14           | 17           | 19            | 15            |
| **Points**         | 22            | 12           | 17           | 26            | 19            |
| **Rebounds**       | 12            | 12           | 19           | 11            | 2             |
| **Assists**        | 12            | 12           | 10           | 6             | 2             |
| **Steals**         | 3             | 12           | 3            | 3             | 4             |
| **Blocks**         | 1             | 12           | 1            | 8             | 11            |
| **Slam Dunks**     | 1             | 7            | 15           | 5             | 1             |

Away Team:

* team name: Charlotte Hornets
* colors: Turquoise, Purple
* players:

|        Stat       |     Info          |         Info     |              Info |         Info     |         Info      |
|:------------------:|:-----------------:|:-----------------:|:-----------------:|:---------------:|:-----------------:|
| **Player Name**  | Jeff Adrien     | Bismack Biyombo    | DeSagna Diop      | Ben Gordon      | Kemba Walker   |
| **Number**         | 4                 | 0                 | 2                 | 8               | 33                |
| **Shoe**           | 18                | 16                | 14                | 15              | 15                |
| **Points**         | 10                | 12                | 24                | 33              | 6                 |
| **Rebounds**       | 1                 | 4                 | 12                | 3               | 12                |
| **Assists**        | 1                 | 7                 | 12                | 2               | 12                |
| **Steals**         | 2                 | 22                 | 4                 | 1               | 7                |
| **Blocks**         | 7                 | 15                | 5                 | 1               | 5                 |
| **Slam Dunks**     | 2                 | 10                | 5                 | 0               | 12                |

Write a method called `game_hash` that returns your nested data structure. We
might suggest starting off with having `game_hash` return only a `{}`. Then run
the `game_hash` tests (see next section) and slowly build up your NDS to
satisfy those tests. We'll describe the strategy here in the next sections.

### Process Tip: Writing NDS is Hard

Writing NDS' is challenging because we humans can lose track of whether or not
we closed a `{...}` set or added a `,` in the right place. Running a small
chunk of tests (more on that in the next section ) to make sure our NDS is
_syntactically valid_ (i.e. honors Ruby's grammar rules) is a good idea. This
allows a process like:

* Start with something _syntactically valid_, but _incorrect_ e.g. `{}`
* Make an edit
* run the tests
* Is the NDS valid? Great!
* Make another edit
* Run the tests...error!
* Add missing comma
* Add the comma
* Run tests...
* Working again!

Syntactically valid, but wrong NDS are easier to correct than to fix
_syntactically invalid_ ***and*** wrong NDS.

### Process Tip: Run Only a Few Tests

When we have a lot of tests and run them all with `learn` and get back all
those failing messages it can make us feel sad. It's like telling someone
you're trying to learn an étude on piano and they keep telling you it's not
perfect yet. "Yeah, we know, that's why we' said we're _l-e-a-r-n-i-n-g_ it."

We can run a section of our tests by using the following command from the CLI:

`rspec spec/hashketball_spec.rb -e game_hash`

The thing that lets us run only a portion of the test suite is the `-e` for
`--example` flag. It means "only run tests in a section that matches the word
`game_hash`." You can read more about it in the [RSpec documentation for `--example`][example].

The `learn` program uses `rspec` to evaluate test success. So, if we get a
chunk of the tests working, as proved by `rspec`, we can trust that
those tests will pass when we run `learn`.

Let's zoom back out again and run _all_ the tests. Many tests fail, but the
good news is that the three tests in the "`game_hash`" example are _passing_.

With these Process Tips in your toolbox, you should be able to get to a valid
NDS. Congratulations! That's the first ⅓ of the work done!

### Process Tip

**TIP**: When you have your strategy for your NDS worked out, start typing it
in in the file `hashketball.rb`. We recommend you start with an empty `Hash`.
Run `ruby hashketball.rb`. If your NDS (the `Hash`) has been correctly
formatted, the `ruby` command will silently return (unless you program in some
`puts` or `print` statements). Every time you add a new player, "run" the
program again. If you see that you have a syntax error, it's because you
mis-typed your NDS. Fix it before you do another player. Constantly asking Ruby
"Hey can you read this?" means that what you test with the `learn` command is
not "broken." It might be _wrong_ and you need to change things, but it's much
easier to tweak a valid NDS (that doesn't pass the tests) than to try to get a
broken NDS (that doesn't pass the tests) working. Move from working, to
working, to working. Never let "broken in this way, and that way, and that way"
mount up!

### Step 2: Building Methods

Recall what you learned in working with nested data structures. When you have a
complex NDS, use code to help you deal with it.

1. Understand the NDS
  * "Pretty-Print" NDS with `pp`
  * Home-Grown Pretty-Print NDS
2. Use `[]` to verify your understanding from Step 1
  * Print values to verify your understanding
  * Leave code comments and documentation for yourself
3. Wrap uses of `[]` from Step 2 into new methods
  * Create simple methods with meaningful names ("First-Order Methods")
  * Ensure "First-Order Methods" use arguments to create flexibility
4. See-saw between bottom-up and top-down method writing
  * Write a method that provides an insight e.g. `oldest_student`
  * Evaluate your First Order Methods
  * Can you use your First-Order Methods to build the insight method's
    implementation?
    * **YES**: Great! Your method is done!
    * **NO**: Build a new method that combines _other_ methods to get closer to what the insight method needs. Repeat step 4
5. Insight method provides an insight! We're done!

While you might have seen this pattern with simple NDS work, this pattern **is
still valid**. The only thing that's changed is that in the method
implementations you can now use awesome Enumerable methods instead of
long-winded `while` code. ***This process works***. Take this lab as a chance
to hone your skills attacking BIG problems with process _on your side_.

### Calling Methods within Methods

You'll be building a series of methods that operate on the above game hash to
return certain information about the teams and players. Each method will operate
on the game hash by calling the `game_hash` method that returns the `game_hash`.
In other words, since our `game_hash` method returns our hash, you can think of
the `game_hash` like a variable that points to our hash and operates on it just
as you would with hashes in previous lessons.

For example, let's say we want to build a method, `home_team_name`, that returns
the name of the home team, `"Brooklyn Nets"`. We can call the method `game_hash`
inside of our `home_team_name` method and operate on the `game_hash:`

```ruby
def home_team_name
  game_hash[:home][:team_name]
end

puts home_team_name
# => "Brooklyn Nets"
```

Now that we understand how we are going to operate on the `game_hash` inside of
the methods we're building, let's build those methods:

### Iterating Through Nested Levels

If you follow the process, you will have a good grasp of your NDS and the work
you need to accomplish. In a case where you get truly stuck, you might want to
use a tool called `pry`.

Using Pry, when running RSpec tests with the `learn` command, we can actually
pause the execution of our Ruby code. This allows us to step into the code and
play with any available variables or methods.

By using Pry while iterating through nested hashes, we can stop at each
iteration and look at the values currently available. To do this, we'll need to
require Pry and add `binding.pry` to the code wherever we want to pause.

Let's take a look at an example - Open up the `hashketball.rb` file once you
have your `game_hash` method working and add the line `require "pry"` at the
top:

```ruby
require "pry"
```

Then, copy and paste the following method:

```ruby
def good_practices
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

Beneath the `end` that closes the method definition, call the method
(`good_practices`) and, in your terminal, run the file with `ruby
hashketball.rb`.

At every place Ruby sees `binding.pry` it will stop execution. While the
program is stopped, you can print out variables that are in scope. At the first
`binding.pry` in the example above, you can type in `location` or `team_data`
and have those values printed out by `pry`. When you're done at the binding,
type `exit` and the code will resume running. If you're all done with a given
`pry` session `exit-program` will close Pry and return you to the command-line.

Again, the best way to avoid needing Pry is to follow the process and only add
code by small increments. But, sometimes, when all else fails, a `binding.pry`
can help you find your way again. We'll teach you more about debugging
throughout this course and do a deeper dive on Pry specifically.

Okay, *now* we're ready to build out methods that will provide our _insights_

### Method Building

* Build a method, `num_points_scored` that takes in an argument of a player's
  name and returns the number of points scored for that player.
  * Think about where in the hash you will find a player's `:points`. How can
    you iterate down into that level? Think about the return value of your
    method. Remember that `.each` returns the original collection that you are
    iterating over. How can you return the number of points for a particular
    player?

* Build a method, `shoe_size`, that takes in an argument of a player's name and
  returns the shoe size for that player.
  * Think about how you will find the shoe size of the correct player. How can
    you check and see if a player's name matches the name that has been passed
    into the method as an argument?

* Build a method, `team_colors`, that takes in an argument of the team name and
  returns an array of that teams colors.

* Build a method, `team_names`, that operates on the game hash to return an
  array of the team names.

* Build a method, `player_numbers`, that takes in an argument of a team name and
  returns an array of the jersey number's for that team.

* Build a method, `player_stats`, that takes in an argument of a player's name
  and returns a hash of that player's stats.
  * Check out the following example of the expected return value of the
    `player_stats` method:

  ```bash
  player_stats("Alan Anderson")
  => { :number => 0,
        :shoe => 16,
        :points => 22,
        :rebounds => 12,
        :assists => 12,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 1
      }
  ```

* Build a method, `big_shoe_rebounds`, that will return the number of rebounds
  associated with the player that has the largest shoe size. Break this one down
  into steps:
  * First, find the player with the largest shoe size
  * Then, return that player's number of rebounds
  * Remember to think about return values here. Use `binding.pry` to drop into
    your method and understand what it is returning and why.

**Bonus Questions:**

Define methods to return the answer to the following questions:

1. Which player has the most points? Call the method `most_points_scored`.

2. Which team has the most points? Call the method `winning_team`.

3. Which player has the longest name? Call the method `player_with_longest_name`.

**Super Bonus:**

1. Write a method that returns true if the player with the longest name had the
   most steals. Call the method `long_name_steals_a_ton?`.

[example]: https://relishapp.com/rspec/rspec-core/v/2-12/docs/command-line/example-option#match-on-one-word
<p class='util--hide'>View <a href='https://learn.co/lessons/advanced-hashes-hashketball'>Hashketball</a> on Learn.co and start learning to code for free.</p>
