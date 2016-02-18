puts "Welcome to Ruby Calculator"

def first_number
	puts "What is the first number?"
	@input_num1 = gets.to_f
end 


def operator
	continue = false
	while continue == false
	operator_array = ['+', '-', '*', '/']
	puts "What is the Operator?"
	@input_oper = gets.strip
	continue = operator_array.include?(@input_oper)
		if continue == true
			@input_oper
		else puts "Please select a valid operator"
		end
	end
end


def second_number
	puts "What is the second number?"
	@input_num2 = gets.to_f
end


def addition(input_num1, input_num2)
	@input_num1 + @input_num2
end

def	subtraction(input_num1, input_num2)
	@input_num1 - @input_num2
end

def multiplication(input_num1, input_num2)
	@input_num1 * @input_num2
end

def division(input_num1, input_num2)
	@input_num1 / @input_num2
end


first_number

operator

second_number


if @input_oper == "+"
	puts "#{addition(@input_num1, @input_num2)}"

elsif @input_oper == "-"
	puts "#{subtraction(@input_num1, @input_num2)}"

elsif @input_oper == "*"
	puts "#{multiplication(@input_num1, @input_num2)}"

elsif @input_oper == "/"
	puts "#{division(@input_num1, @input_num2)}"

end