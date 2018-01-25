class BoardCase
  attr_reader :nom
  attr_accessor :etat

  def initialize(etat,nom)
    @etat = etat
    @nom = nom
    @etat = "vide"
  end

  def etat
    return @etat
  end

  def nom
    return @nom
  end

  def info
    return "la case #{@nom} est #{@etat}"
  end

end

class Board
  attr_accessor :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3

  def initialize
    puts "création du plateau"
    @boardcases = boardcases
  end
  def boardcases 
    a1 = BoardCase.new("","a1")
    a2 = BoardCase.new("","a2")
    a3 = BoardCase.new("","a3")
    b1 = BoardCase.new("","b1")
    b2 = BoardCase.new("","b2")
    b3 = BoardCase.new("","b3")
    c1 = BoardCase.new("","c1")
    c2 = BoardCase.new("","c2")
    c3 = BoardCase.new("","c3")

  end
end

plateau = Board.new
plateau.boardcases
puts plateau
