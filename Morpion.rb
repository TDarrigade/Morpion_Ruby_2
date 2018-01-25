require 'pp'

class BoardCase
  attr_reader :nom
  attr_accessor :etat
  def initialize(etat,nom)
    $etat = etat
    @nom = nom
    $etat = "_"
  end
  def etat
    return $etat
  end
  def nom
    return @nom
  end
  def info
    return "la case #{@nom} est #{$etat}"
  end
end

class Board
  attr_accessor :boardcases

  def initialize
    puts "création du plateau"

    @a1 = BoardCase.new("_","a1")
    @a2 = BoardCase.new("_","a2")
    @a3 = BoardCase.new("_","a3")
    @b1 = BoardCase.new("_","b1")
    @b2 = BoardCase.new("_","b2")
    @b3 = BoardCase.new("_","b3")
    @c1 = BoardCase.new("_","c1")
    @c2 = BoardCase.new("_","c2")
    @c3 = BoardCase.new("_","c3")

    @boardcases = boardcases
    @boardcases = [@a1,@a2,@a3,@b1,@b2,@b3,@c1,@c2,@c3]
  end
  
  def interface
    puts 	"#{@a1.etat(X)} | #{@a2.etat} | #{@a3.etat}"
    puts	"#{@b1.etat} | #{@b2.etat} | #{@b3.etat}"
    puts	"#{@c1.etat} | #{@c2.etat} | #{@c3.etat}"
  end
end

#---------------------------

plateau = Board.new
p plateau.interface








