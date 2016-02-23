# The Shell Game

"The Shell Game" involves three shells/cups/etc upturned on a playing surface, with a ball placed underneath one of them.
The shells are then rapidly swapped round, and the game involves trying to track the swaps and, once they are complete,
identifying the shell containing the ball.

This is usually a con, but you can assume this particular game is fair...

Your task is as follows. Given the shell that the ball starts under, and list of swaps, return the location of the ball
at the end. All shells are indexed by the position they are in at the time.

For example, given the starting position 0 and the swap sequence `[(0, 1), (1, 2), (1, 0)]`:

The first swap moves the ball from 0 to 1. The second swap moves the ball from 1
to 2. The final swap doesn't affect the position of the ball because the ball is
not currently at the position of either swap location.

So

    findTheBall(0, [(0, 1), (2, 1), (0, 1)]) == 2

There aren't necessarily only three cups in this game, but there will be at least two. You can assume all swaps are valid, and involve two distinct indices.

### Language and test case support

Test cases (or pseudo-test cases) have been provided for the following languages:

  * [Clojure](./shell_game_test.clj)
  * [Ruby](./shell_game_test.rb)
  * [Python](./shell_game_test.py)
  * [Go](./shell_game_test.go)
  * [JavaScript](./shell_game_test.js)
  * [Haskell](./shell_game_test.hs)
  * [Rust](./shell_game_test.rs)

### Solution submission

  You are welcomed and encouraged to try to implement a solution in one or more languages.
  To submit a solution, please create a gist with your code and send the gist link to
  me at [craig@mojotech.com](mailto:craig@mojotech.com?subject=Shell Game Challenge) with a subject line of `Shell Game Challenge`.
