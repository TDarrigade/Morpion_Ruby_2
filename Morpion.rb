require 'pp'

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
  attr_accessor :boardcases

  def initialize
    puts "création du plateau"
    
    a1 = BoardCase.new("vide","a1")
    a2 = BoardCase.new("vide","a2")
    a3 = BoardCase.new("vide","a3")
    b1 = BoardCase.new("vide","b1")
    b2 = BoardCase.new("vide","b2")
    b3 = BoardCase.new("vide","b3")
    c1 = BoardCase.new("vide","c1")
    c2 = BoardCase.new("vide","c2")
    c3 = BoardCase.new("vide","c3")

    @boardcases = boardcases
    @boardcases = [a1,a2,a3,b1,b2,b3,c1,c2,c3]
    def info_plateau
    return "le plateau est composé de #{@boardcases}"	
    end
    
  end


end

plateau = Board.new
pp plateau.info_plateau














