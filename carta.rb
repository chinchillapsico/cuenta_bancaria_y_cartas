class Carta
    attr_accessor :numero, :pinta
    def initialize(numero, pinta)
        if (numero < 1 || numero > 13)
            raise "ingresa un numero del 1 al 13"
        else   
            @numero = numero
        end
        if ["C","D","E","T"].include?(pinta)
            @pinta =pinta
        else   
            raise "ingresa una pinta; C, D, E, T"
        end

    end    
end    
# mano = []
# pintas =["C","D","E","T"].sample
# 5.times do
#     mano << Carta.new(rand(1..13), pintas) 
# end
# print mano
# carta1 = Carta.new(13,"D")    
