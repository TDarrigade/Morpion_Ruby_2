require 'pp'
require 'pry'

class BoardCase
  attr_reader :nom
  attr_accessor :etat
  def initialize(etat,nom)
    @etat = etat
    @nom = nom
    @etat = "_"
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

    @a1 = BoardCase.new("_","a1")
    @a2 = BoardCase.new("_","a2")
    @a3 = BoardCase.new("_","a3")
    @b1 = BoardCase.new("_","b1")
    @b2 = BoardCase.new("_","b2")
    @b3 = BoardCase.new("_","b3")
    @c1 = BoardCase.new("_","c1")
    @c2 = BoardCase.new("_","c2")
    @c3 = BoardCase.new("_","c3")
    @@boardcases = [@a1,@a2,@a3,@b1,@b2,@b3,@c1,@c2,@c3]
  end #fin d'initialize

  def interface
    puts  "#{@boardcases[0].etat} | #{@boardcases[1].etat} | #{@boardcases[2].etat}"
    puts  "#{@boardcases[3].etat} | #{@boardcases[4].etat} | #{@boardcases[5].etat}"
    puts  "#{@boardcases[6].etat} | #{@boardcases[7].etat} | #{@boardcases[8].etat}"
  end



end #fin de la class board

class Player
  attr_accessor :nom, :valeur
  def initialize(nom,valeur)
    @nom = nom
    @valeur = valeur
    win = false
    @@boardcases = [@a1,@a2,@a3,@b1,@b2,@b3,@c1,@c2,@c3]
  end

  def play(shot)
    @@boardcases[shot-1].etat = @valeur
  end

  def se_declare
    puts "Je suis #{@nom} et je joue les #{@valeur}"
  end
end#fin de la class player

ben = Player.new("ben","X")
ben.se_declare

#---------------------------

plateau = Board.new

ben.play(1)
#tom = Player.new("tom","O")

plateau.interface

#ben.se_declare
#tom.se_declare
