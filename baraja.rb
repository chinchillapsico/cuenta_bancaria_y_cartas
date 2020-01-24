require_relative "carta.rb"

class Baraja #PARA LLAMAR CLASES DE OTRO ARCHIVO DEBE IR EN MAYUSCULA (CONSTANTE)
    attr_accessor :cartas
    def initialize
        @cartas = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13].product(["C", "D", "T", "P"]) 
    end
    def barajar
         @cartas_barajadas = @cartas.shuffle
    end 
    def sacar
        @cartas_barajadas.pop
    end 
    def repartir_mano
        mano = []
        5.times do 
            mano.push(sacar)
        end  
         print mano  
    end       

end   
# @cartas = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13].product(["C", "D", "T", "P"])
# print @cartas
# cartasbarajadas = @cartas.shuffle
# print "aqui vienen las cartas desordenadas"
# print cartasbarajadas.first(5)

persona1 = Baraja.new
persona1.barajar
persona1.repartir_mano

print persona1
        

  

