# File:  radio.rb
 
class Radio
 
  def initialize( rad )
     raise unless rad.is_a?(Numeric)

     if rad<0
        raise ArgumentError, "No se aceptan número negativos"
     end

     @x = rad

  end
 
  def calcularradio( )
     @x/2
  end
 
end
