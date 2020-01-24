class Appointment
    attr_accessor :location, :purpose, :hour, :min

    def initialize(location, purpose, hour, min)
        @location = location
        @purpose = purpose
        @hour = hour
        @min = min
    end   
end 
#clase padre tiene attr que serán usados en las clases hijas.
class MonthlyAppointment < Appointment
    attr_accessor :day
#todo arguneto que no sea heredado  debe definirse con un attr_accessor para luego ser usado. Con super llamo al metodo del padre (es necesario hacer un initialize con los argumentos del padre + los arg distintivos de la clase). también deben definirse '@day = day'
    def initialize(location, purpose, hour, min, day)
        super(location, purpose, hour, min)
        @day = day  
    end  

    def occurs_on?(day) #la expresion ? retorna automaticamente  true o false, por lo que no es necesario hacer una validacion
        day == @day      
    end

    def to_s
         "Reunión única en #{location} sobre #{purpose} el día #{day} a la(s) #{hour}:#{min} "  
    end    
end    

class DailyAppointment < Appointment

    def initialize(location, purpose, hour, min)
        super(location, purpose, hour, min)
        
    end  

    def occurs_on?(hour, min)
        hour == @hour && min == @min

    end

    def to_s
         "Reunión única en #{location} sobre #{purpose} a la(s) #{hour}:#{min} "  
    end    
end

class OneTimeAppointment < Appointment
    attr_accessor :day, :month, :year
    def initialize(location, purpose, hour, min, day, month, year)
        super(location, purpose, hour, min)
        @day = day
        @month = month
        @year = year  
    end  

    def occurs_on?(day, month, year)
        day == @day && month == @month && year == @year

    end

    def to_s
         "Reunión única en #{location} sobre #{purpose} el #{day}/#{month}/#{year} a la(s) #{hour}:#{min} "  
    end   
end    


c =  OneTimeAppointment.new('Desafío Latam', 'Trabajo', 14, 30, 4, 6, 2019)
#puts retorna automaticamente el metodo to_s creado en la clase respectiva, po lo que no es necesario llamarlo.
print c.occurs_on?(4,6,2019)
puts DailyAppointment.new('Desafío Latam', 'Educación', 8, 15)
# print b.occurs_on?(8,15)
puts MonthlyAppointment.new('NASA', 'Aliens', 8, 15, 23)
# print a.occurs_on?(22)
