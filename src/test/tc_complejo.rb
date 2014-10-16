require 'Complejo'
require 'test/unit'

# Practica numero 4 de Lenguajes y Paradigmas de la Programacion
# Implementacion de los casos de test para la clase complejo.
# Dailos Sabina Rodriguez
# Raul Perez Hernandez

# Test Complejo Class
class TestComplejo < Test::Unit::TestCase
  def test_constructor
    c1 = Complejo.new(1, 2)
    assert(c1.r == 1)
    assert(c1.i == 2)

    c2 = Complejo.new(3, 4)

    # Test de suma de numeros complejos
    assert(c1.add(c2.r, c2.i) ==  '4+6i')

    # Test de resta de numeros complejos
    assert(c1.subtract(c2.r, c2.i) == '-2-2i')

    # Test de multiplicacion de numeros complejos
    assert(c1.multiply(c2.r, c2.i) == '-5+10i')

    # Test de division de numeros complejos
    assert(c1.division(c2.r, c2.i) == '0.44+0.08i')

    # Test de producto por escalar de un numero complejo
    assert(c1.scalar(3) == '3+6i')
  end
end
