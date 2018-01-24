class InvalidMoveError < StandardError; end


class Hanoi
  attr_reader :towers

  def initialize(towers = [[3, 2, 1], [], []])
    @towers = towers
  end

  def render
    system('clear')
    p towers
  end

  def move(from, to)
    towers[to].push(towers[from].pop)
  end

  def valid_move?(from, to)

    raise InvalidMoveError if towers[from].empty?
    if !towers[to].empty?

      raise InvalidMoveError if towers[from].last > towers[to].last
    end


    true
  end

  def play
    until won?
      render
      begin
      puts 'please enter a starting stack'
      from = gets.to_i
      puts 'and now an ending stack'
      to = gets.to_i
      move(from, to) if valid_move?(from, to)
    rescue InvalidMoveError
      puts "Invalid move please try again"
      retry
      end
    end
    puts "Congratulations you won"
  end

  def won?
    false unless self.towers[2].length == 3
    # true
  end

end
