# Deaf Grandma HW Assignment Solution
# ~ adapted from Aaron Lewis

# can be tested on the command line using:
#    $ ruby -r "./deaf_grandma.rb" -e "DeafGrandma::test"

class DeafGrandma
	@@count=0

	# creates deaf_grandma's response to *input*
	def self.responds(input)
		year = rand(1930..1950)     #chooses a random year between 1930 and 1950
		
		if @@count >= 2 && input == "BYE"
			exit
		elsif input != input.upcase       # not all uppercase --> "HUH?! SPEAK UP, SONNY!"
			@@count = 0 
			"HUH?! SPEAK UP, SONNY!"
		elsif input == "BYE"            # "BYE" --> "Don't go..."
			@@count = @@count + 1
			"Don't go..."
		else                             # "NO, NOT SINCE 19__!"
			@@count = 0
			str = "NO, NOT SINCE " + year.to_s + "!"
			str
		end
		
	end

	#skeleton code provided to the students:
	# a method to test grandma(input) on the command line
	def self.test
		puts "Say something to Deaf Grandma"
		while true                   # while loop: repeatedly asks for input; puts response
			input = gets.chomp
			puts responds(input)
		end

	end

end