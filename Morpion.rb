class BoardCase
	attr_accessor :etat, :nom

  def initialize(etat,nom)
  	@etat = etat
  	@nom = nom
  	
  end

  def etat
  	return @etat
	end


	def nom
		return @nom

	end
end
a1 = BoardCase.new("vide","a1")

p a1.nom
p a1.etat