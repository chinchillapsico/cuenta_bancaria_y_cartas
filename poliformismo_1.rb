class Person
    def initialize(first, last, age)
        @first_name = first
        @last_name = last
        @age = age
    end

    def birthday
        @age += 1
    end
end

class Student < Person
    def initialize(first, last, age)
        super
    end

    def talk
        puts "Aquí es la clase de programación con Ruby?"
    end
    def introduce
        puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    end      
end  

class Teacher < Person
    def initialize(first, last, age)
        super
    end

    def talk
        puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    end    
end 

class Parent < Person
    def initialize(first, last, age)
        super
    end

    def talk
        puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end    
end       

a = Student.new("chinchillo", "primero del Reino de chinchillolandia", 22)
print a.introduce