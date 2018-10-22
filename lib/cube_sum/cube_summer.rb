module CubeSum
  class CubeSummer
    def cube(x)
      return x**3
    end

    def sum(x)
      x.to_s.chars.map(&:to_i).inject(0){|sum,x| sum + x }
    end
  end
end
