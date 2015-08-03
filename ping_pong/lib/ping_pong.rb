class Fixnum
  define_method(:ping_pong) do
    a_array = []
    self.times do |i|
      if (i+1)%3==0
        a_array.push("ping")
      elsif (i+1)%5==0
        a_array.push("pong")
      else
        a_array.push((i+1).to_s)
      end
    end


    output = ""
    a_array.each do |n|
      output.concat(n)
    end
    output

  end
end
