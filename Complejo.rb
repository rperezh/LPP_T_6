   class Complejo
  
   attr_reader :r, :i
   
      def initialize (r, i)
         @r = r
         @i = i
      end

      def to_s
         if @i >= 0
            "#{@r}+#{@i}i"
         else
            "#{@r}#{@i}i"
         end
      end
      def suma(r, i)
         p_r = @r+r
         p_i = @i+i
         c3 = Complejo.new(p_r, p_i)
         return c3.to_s
      end
      def resta(r, i)
         p_r = @r - r
         p_i = @i - i
         c3 = Complejo.new(p_r, p_i)
         return c3.to_s
      end
      def multiplicacion(r, i)
         p_r = @r*r - @i*i
         p_i = @r*i + @i*r
         c3 = Complejo.new(p_r, p_i)
         return c3.to_s
      end
      def division(r, i)
         p_r = (@r*r + @i*i).to_f / (r**2 + i**2)
         p_i = (@i*r - @r*i).to_f / (r**2+i**2)
         c3 = Complejo.new(p_r, p_i)
         return c3.to_s
      end
      def escalar(c)
         p_r = @r*c
         p_i = @i*c
         c3 = Complejo.new(p_r, p_i)
         return c3.to_s
      end
   end

c1 = Complejo.new(1,2)
c2 = Complejo.new(1,3)
puts c1.suma(c2.r, c2.i)
puts c1.resta(c2.r,c2.i)
puts c1.multiplicacion(c2.r, c2.i)
puts c1.division(c2.r, c2.i)
puts c1.escalar(5)
