class Usuario
    attr_accessor :nombre, :cuentas
    def initialize(nombre, cuentas)
        @nombre = nombre
        @cuentas = cuentas
    end
    def saldo_total(cuentas)
        # self.cuentas.each do |acco|

        # end    
            saldo_total = cuentas.saldo.inject(0){|sum,x| sum + x } 
            print saldo_total 
    end      

end

class CuentaBancaria
    attr_accessor :nombre_de_banco, :numero_de_cuenta, :saldo

    def initialize(nombre_de_banco, numero_de_cuenta,  saldo=0)
        @nombre_de_banco = nombre_de_banco
        @numero_de_cuenta = numero_de_cuenta
        @saldo = saldo
    end
    def transferir(monto, cuenta)
        if
            @saldo_final = saldo - monto
            @saldo_cuenta_2 = saldo + monto
        end    
    end  
        

end


cl1 = CuentaBancaria.new("banco x", 12345678, 5000)

cl2 = CuentaBancaria.new("banco x", 23456789, 5000)

us1 = Usuario.new("chinchillo", [cl1, cl2])
print "#{cl1.transferir(5000,cl2 )}\n"
print "#{cl2.saldo}\n"
print "#{cl1.saldo}\n"


