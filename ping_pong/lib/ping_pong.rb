class Fixnum
  define_method(:ping_pong) do
    a_array = []
    self.times do |i|
      num=i+1
      if (num)%3==0
        if (num)%5==0
          a_array.push("ping-pong")
        else
          a_array.push("ping")
        end
      elsif (num)%5==0
        a_array.push("pong")
      else
        a_array.push((num).to_s)
      end
    end


    output = ""
    a_array.each do |n|
      output.concat(n)
    end
    output

  end
end
