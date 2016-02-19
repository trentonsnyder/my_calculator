def main_page(answer)
	input_operator = " "
	if answer ==  0
		puts "What is the first number?"
		input_num1 = gets.to_f
	else
		input_num1 = answer
	end
	loop do
		case input_operator
		when "+" 
			break
		when "-" 
			break
		when "*" 
			break
		when "/"
			break
		when "^"
			break
		else	
			puts "What is the operator? [ +, -, *, /, ^ ]"
			input_operator = gets.strip
		end
	end
	puts "What is the second number?"
	input_num2 = gets.to_f
	calculating(input_operator, input_num1, input_num2, answer)
end

def calculating(input_operator, input_num1, input_num2, answer)
	if input_operator == '+'
		puts "#{addition(input_num1, input_num2)}"
		answer = addition(input_num1, input_num2)
	elsif input_operator == '-'
		puts "#{subtraction(input_num1, input_num2)}"
		answer = subtraction(input_num1, input_num2)
	elsif input_operator == '*'
		puts "#{multiplication(input_num1, input_num2)}"
		answer = multiplication(input_num1, input_num2)
	elsif input_operator == '/' && input_num2 == 0
		puts "Can't divide by zero"
	elsif input_operator == '/'
		puts = "#{division(input_num1, input_num2)}"
		answer = division(input_num1, input_num2)
	elsif input_operator == '^'
		puts "#{exponent(input_num1, input_num2)}"
		answer = exponent(input_num1, input_num2)
	end
	exit_menu(answer)
end

def exponent(input_num1, input_num2)
	input_num1 ** input_num2
end

def addition(input_num1, input_num2)
	input_num1 + input_num2
end

def subtraction(input_num1, input_num2)
	input_num1 - input_num2
end

def multiplication(input_num1, input_num2)
	input_num1 * input_num2
end

def division(input_num1, input_num2)
	input_num1 / input_num2
end

def exit_menu(answer)
puts "Enter x to exit, Enter any other key to continue"
	exiting = gets.strip.downcase
	if exiting == "x"
		exit(0)
	else
		puts "Clear answer? [yes/ any other key]"
		clear = gets.strip.downcase
		if clear == 'yes'
			answer = 0
		else
			puts "Current number is: #{answer}"
		end
		main_page(answer)
	end
end

answer = 0
main_page(answer)