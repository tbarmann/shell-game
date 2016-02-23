#
# To run:
#
# $ ruby shell_game_test.rb
#

require 'minitest/autorun'

class Array
      def swap!(a,b)
           self[a], self[b] = self[b], self[a]
      self
      end
end




def find_the_ball start, shell_moves

  shell_count = shell_moves.size > 0 ? shell_moves.flatten.max : 0
  
  shells = Array.new(shell_count)
  shells.fill(".")
  
  shells[start] = "*"
  
  shell_moves.each do |move|
    # puts shells.join
    pos_1 = move[0]
    pos_2 = move[1]
    if shells.index("*") == pos_1 || shells.index("*") == pos_2
      shells.swap!(pos_1,pos_2)
    end
  end
  shells.index("*")
      
end


class ShellGameTest < MiniTest::Unit::TestCase
  def test_it
    assert_equal(2, find_the_ball(0, [[0, 1], [1, 2], [1, 0]]))
    assert_equal(5, find_the_ball(5, []))
    assert_equal(2, find_the_ball(0, [[0,1], [2,1], [0,1]]))
    assert_equal(1, find_the_ball(0, [[0,1]]))
    assert_equal(0, find_the_ball(1, [[0,1]]))
    assert_equal(1, find_the_ball(0, [[0,1], [1,2], [2,0], [0,1], [1,2], [2,1], [2, 0], [0,2]]))
    assert_equal(2, find_the_ball(0, [[0,2], [1,0]]))
    assert_equal(0, find_the_ball(1, [[0,2], [1,0]]))
    assert_equal(2, find_the_ball(0, [[0,9], [9,3], [3,7], [7,8], [8,2], [4,5]]))
    assert_equal(1, find_the_ball(1, [[0,9], [9,3], [3,7], [7,8], [8,2], [4,5]]))
    assert_equal(8, find_the_ball(2, [[0,9], [9,3], [3,7], [7,8], [8,2], [4,5]]))
    assert_equal(9, find_the_ball(3, [[0,9], [9,3], [3,7], [7,8], [8,2], [4,5]]))
    assert_equal(5, find_the_ball(4, [[0,9], [9,3], [3,7], [7,8], [8,2], [4,5]]))
    assert_equal(4, find_the_ball(5, [[0,9], [9,3], [3,7], [7,8], [8,2], [4,5]]))
    assert_equal(6, find_the_ball(6, [[0,9], [9,3], [3,7], [7,8], [8,2], [4,5]]))
  end
end
