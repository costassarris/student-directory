#lets put all students into an array
def input_students
	puts ""
	puts "Please enter the names of the students".center(60)
	puts "To finish, just hit return twice".center(60)
	#create an empty array
	students = []
	#get the first name
	name = gets.chomp
	cob = ''
	#while the name is not empty, repeat this code
	while !name.empty? do
		#ask user for students country of birth
		puts "Country of birth?".center(60)
		cob = gets.chomp
		#add the student hash to the array
		students << {:name => name, :cohort => :February, :cob => cob}
		puts "Now we have #{students.length} students".center(60)
		#get another name from the user
		name = gets.chomp
	end
	#return the array of students
	students
end

def print_header
	puts "The students of my cohort at Makers Academy".center(60)
	puts "-----------------".center(60)
end

def print(students)
	students.each_with_index do |student, index|
		puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort) born in #{student[:cob]}"
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)