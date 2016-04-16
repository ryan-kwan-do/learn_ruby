def echo(input)
	"#{input}"
end

def shout(input)
	"#{input.upcase}"
end

def repeat(input,n=2)
  [input] * n * ' '
end

def start_of_word(input, n)
	if n == 1
      input[0]
    else 
      input[0..n-1]
    end
end

def first_word(input)
	input.split(" ")[0]
end

def titleize(input)
  my_array = input.split(" ")
  my_array.each do |x|
    if my_array.index(x) != 0 && (x == "the" || x == "and" || x == "over")
      x
    else 
    x.capitalize!
    end
  end
  my_array.join(" ")
end


