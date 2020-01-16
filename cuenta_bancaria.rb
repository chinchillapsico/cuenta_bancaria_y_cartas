class CuentaBancaria

    attr_accessor :nombre_de_usuario, :numero_de_cuenta, :is_vip

    def initialize(nombre_de_usuario, numero_de_cuenta,  is_vip=0)
        if ((numero_de_cuenta.digits).count != 8 )
            raise RangeError,  "la cuenta debe tener 8 digitos"
        else   
            @numero_de_cuenta = numero_de_cuenta
            @nombre_de_usuario = nombre_de_usuario
            @is_vip = is_vip
        
        end
        
    end 
    def NumeroCuenta
        
        return "#{is_vip}-#{numero_de_cuenta}"

    end       
end   

cb1 = CuentaBancaria.new("chinchillo", 12348678, 1)
# cb2 = CuentaBancaria.new("usuario error", 123456789, 0)
cb3 = CuentaBancaria.new("guarencito", 12345679, 0)
print cb1.NumeroCuenta
# print cb2.NumeroCuenta
print cb3.NumeroCuenta
