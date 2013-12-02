class Woodchuck
	attr_accessor :chuck_count
	@@Woodchuck_count = 0 
	WOODCHUCKS =[]

	def initialize
	@chuck_count = 0
	@@Woodchuck_count += 1
	WOODCHUCKS << self
	end

	def chuck_wood
	@chuck_count +=1
	end

	def self.Woodchuck_count
		@@Woodchuck_count
	end


end

rand(1..10).times do 
	Woodchuck.new
end

Woodchuck::WOODCHUCKS.each do |woodchuck|
 	rand(1..3).times do 
 	woodchuck.chuck_wood
 	puts woodchuck.chuck_wood.inspect
end
end

total_chucked = 0
numbered_woodchucks = 0
puts "each woodchuck chucked the following amount."
Woodchuck::WOODCHUCKS.each do |woodchuck|
	numbered_woodchucks += 1
	puts "Woodchuck #{numbered_woodchucks} chucked #{woodchuck.chuck_count} pounds of wood"
	total_chucked += woodchuck.chuck_count
end

puts "\n\n#{Woodchuck.Woodchuck_count} Woodchucks chucks #{total_chucked} pounts of wood"




puts Woodchuck::WOODCHUCKS

