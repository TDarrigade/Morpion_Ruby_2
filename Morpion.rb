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

  def nouvel_etat(nv_etat)
 	 @etat = nv_etat
 	 if nv_etat == "X" || nv_etat == "O"
 	 	puts "Cette case est prise"
 	 end
  end
end

a1 = BoardCase.new("","a1")

p a1.info
a1.nouvel_etat("X")
p a1.info