module CyclicalCubeSum
  class CyclicalCubeSummer

    TRIANGULAR_NUMBERS = [153, 371, 370]
    FOUND_TRIANGLES = [407]
    ALL_TRIANGLES = TRIANGULAR_NUMBERS.push(FOUND_TRIANGLES).flatten

    def get_digit_array(integer)
      integer.to_s.chars.map(&:to_i)
    end

    def cube_array(array)
      array.map! { |x| x**3 }
    end

    def sum_array(x)
      x.inject(0){|sum,x| sum + x }
    end

    def single_cycle(integer)
      char_array = get_digit_array(integer)
      cubed_array = cube_array(char_array)
      result = sum_array(cubed_array)
      result
    end

    def full_cycle(integer)
      return :triangle if ALL_TRIANGLES.include?(integer)
      result = single_cycle(integer)
      return :loop if result == integer
      count = 0
      result_list = []
      until(count == 99 || ALL_TRIANGLES.include?(result)) # || result_list.include?(result))s
        result = single_cycle(result)
        return :loop if result_list.include? result #puts "Result list: #{result_list}"
        result_list << result
      end
      result
    end
  end
end
