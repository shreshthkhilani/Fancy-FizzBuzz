=begin

FizzBuzz 2.0
Shreshth Khilani

=end

$fizz = "Fizz"
$buzz = "Buzz"

=begin
	Prints the main menu
=end
def showMainMenu()
	puts
	puts "Select an option:"
	puts "R: Run " + $fizz + $buzz
	puts "C: Change Words"
	puts "Q: Quit"
end

=begin
	Removes all spaces from a string
=end
def removeWhitespace(a)
	outString = ""
	a.split("").each do |i|
		outString += i unless i == " "
	end
	return outString
end

=begin
	Changes "Fizz" and "Buzz" to words of the user's choice
=end
def changeSettings()
	puts "Choose word to replace " + $fizz
	$fizz = removeWhitespace(gets.chomp)
	puts "Choose word to replace " + $buzz
	$buzz = removeWhitespace(gets.chomp)
end

=begin
	Returns 
		Fizz if n is divisible by 3, 
		Buzz if n is divisible by 5, 
		FizzBuzz if n is divisible by 15,
		and the number otherwise
=end
def isFizzBuzz(n) 
	return $fizz + $buzz if n % 15 == 0
	return $fizz if n % 3 == 0
	return $buzz if n % 5 == 0
	return n.to_s
end

=begin
	Accepts a number and runs FizzBuzz for all numbers upto the input 
=end
def runFizzBuzz()
	while true
		puts "Number to stop " + $fizz + $buzz + "-ing at?"
		n = gets.chomp.to_i
		if n < 1
			puts "You need to input a number which is equal to or more than 1"
			next
		end
		for i in 1..n
			out = isFizzBuzz(i)
			puts out
		end
	end
end

=begin 
	Starts the program and handles the option choice of the user
=end
puts "Welcome to FizzBuzz!"
while true
	showMainMenu()
	option = gets.chomp

	if option == "q" or option == "Q"
		break
	end
	if option == "c" or option == "C"
		changeSettings()
		next
	end
	if option != "r" and option != "R"
		puts "Invalid selection! :("
		next
	end

	runFizzBuzz()
end