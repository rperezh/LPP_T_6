#!/usr/bin/env ruby

# Practica numero 4 de Lenguajes y Paradigmas de la Programacion, se implementa la clase complejo. 
# Dailos Sabina Rodriguez
# Raul Perez Hernandez

   #Clase Objeto de la practicas
   class Complejo
   attr_reader :r, :i
   
      #Inicializamos las variables
      def initialize (r, i)
         @r = r
         @i = i
      end
      
      #Metodo para imprimir por pantalla el numero complejo
      def to_s
         if @i >= 0
            "#{@r}+#{@i}i"
         else
            "#{@r}#{@i}i"
         end
      end

      #Metodo para sumar dos numeros complejos
      def add(r, i)
         p_r = @r+r
         p_i = @i+i
         c3 = Complejo.new(p_r, p_i)
         return c3.to_s
      end

      #Metodo para restar dos numeros complejos
      def subtract(r, i)
         p_r = @r - r
         p_i = @i - i
         c3 = Complejo.new(p_r, p_i)
         return c3.to_s
      end
      
      #Metodo para multiplicar dos numeros complejos
      def multiply(r, i)
         p_r = @r*r - @i*i
         p_i = @r*i + @i*r
         c3 = Complejo.new(p_r, p_i)
         return c3.to_s
      end

      #Metodo para dividir dos numeros complejos
      def division(r, i)
         p_r = (@r*r + @i*i).to_f / (r**2 + i**2)
         p_i = (@i*r - @r*i).to_f / (r**2+i**2)
         c3 = Complejo.new(p_r, p_i)
         return c3.to_s
      end
    
      #Metodo para producto escalar entre una constante y un complejo
      def scalar(c)
         p_r = @r*c
         p_i = @i*c
         c3 = Complejo.new(p_r, p_i)
         return c3.to_s
      end
   end
