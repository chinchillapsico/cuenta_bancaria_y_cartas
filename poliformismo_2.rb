module Habilidades
    module Volador
        def volar
        'Estoy volandooooo!'
        end
        def aterrizar
        'Estoy cansado de volar, voy a aterrizar'
        end
    end
    module Nadador
        def nadar
        'Estoy nadando!'
        end
        def sumergir
        'glu glub glub glu'
        end
    end
    module Caminante
        def caminar
        'Puedo caminar!'
        end
    end
end
module Alimentacion
    module Herbivoro
        def comer
        'Puedo comer plantas!'
        end
    end
    module Carnivoro
        def comer
        'Puedo comer carne!'
        end
    end    
end

class Animal
    attr_reader :nombre
    def initialize (nombre)
        @nombre = nombre
    end    
end

class Ave < Animal
    
end

class Mamifero < Animal
    
end 

class Insecto < Animal
    
end 

class Pinguino < Ave
    include Habilidades::Nadador, Habilidades::Caminante, Alimentacion::Carnivoro
    
end 

class Paloma < Ave
    include Habilidades::Volador, Habilidades::Caminante, Alimentacion::Herbivoro
    def initialize(nombre)
        super
    end
end 

class Pato < Ave
    include Habilidades::Nadador, Habilidades::Caminante, Alimentacion::Herbivoro
    def initialize(nombre)
        super
    end

end 

class Perro < Mamifero
    include Habilidades::Caminante, Alimentacion::Carnivoro
    def initialize(nombre)
        super
    end
end 

class Gato < Mamifero
    include Habilidades::Caminante, Alimentacion::Carnivoro
    def initialize(nombre)
        super
    end
end 

class Vaca < Mamifero
    include Habilidades::Caminante, Alimentacion::Herbivoro
    def initialize(nombre)
        super
    end
end 

class Mosca < Insecto
    include Habilidades::Volador, Habilidades::Caminante, Alimentacion::Herbivoro
    def initialize(nombre)
        super
    end
end 

class Mariposa < Insecto
    include Habilidades::Volador, Alimentacion::Herbivoro
    def initialize(nombre)
        super
    end 
end 

class Abeja < Insecto
    include Habilidades::Volador, Habilidades::Caminante, Alimentacion::Herbivoro
    def initialize(nombre)
        super
    end
end 

a = Pinguino.new("pinguino")
puts a.nadar
puts a.caminar

b = Mosca.new("mosquita")
print "soy una #{b.nombre} y #{b.caminar} en tu cara"