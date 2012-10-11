Autor: Juan Lucas González Hidalgo
Asignatura: Lenguaje y Paradigma de la Programación
Practica: 4

Modo de ejecución.

Abrir una terminal y escribir "ruby I. tc_radio.rb" asi se ejecutara realizando los test.
Abrir una terminal y escribir "rake test" se ejecuten todas las pruebas.

Posibles casos.

¿Qué ocurre si la entrada no es un número?

Se comprueba raise unless rad.is_a?(Numeric) al inicializar el objeto dentro de la clase. Y con 
assert_raise( RuntimeError ) { Radio.new('a').calcularradio() } que esta dentro de los test en metodo test_typecheck se
hace la prueba y da error en caso que se cumpla el raise que no deja seguir ejecutando el programa.

¿Qué ocurre si la entrada es un número negativo?

Se comprueba
      if rad<0
        raise ArgumentError, "No se aceptan número negativos"
     end 
al inicializar el objeto dentro de la clase. Y con assert_raise( ArgumentError ) { Radio.new(-100).calcularradio() } que esta dentro de los test en metodo test_typecheck se hace la prueba y da error en caso que se cumpla el raise que no deja seguir ejecutando el programa.





