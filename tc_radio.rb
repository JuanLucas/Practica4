# File:  tc_radio.rb
 
require "radio"
require "test/unit"
 
class TestRadio < Test::Unit::TestCase


   def test_simple
      assert_equal(1, Radio.new(2).calcularradio())
      assert_equal(50, Radio.new(100).calcularradio())
      assert_equal(0, Radio.new(0).calcularradio())
      assert_in_delta(10.5, 21, 11) 
      assert_in_delta(9, 21, 11,"Error con el decimal obtenido")

   end
  
   def test_typecheck
      assert_raise( RuntimeError ) { Radio.new('a').calcularradio() }
      assert_raise( ArgumentError ) { Radio.new(-100).calcularradio() }
   end

   def test_failure
      assert_equal(3, Radio.new(2).calcularradio(), "Resultado Incorrecto" )
   end
 
end
