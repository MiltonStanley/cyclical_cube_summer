module CubeSum
  class CubeSummer
    def get_digit_array(integer)
      integer.to_s.chars.map(&:to_i)
    end

    def cube_array(array)
      array.map! { |x| x**3 }
    end

    def sum_array(x)
      x.inject(0){|sum,x| sum + x }
    end
  end
end
