#lets put all students into an array
students = [
	{:name => "Dr. Hannible Lecter", :cohort => :February},
	{:name => "Darth Vadar", :cohort => :February},
	{:name => "Nurse Ratched", :cohort => :February},
	{:name => "Michael Corleone", :cohort => :February},
	{:name => "Alex De Large", :cohort => :February},
	{:name => "The Alien", :cohort => :February},
	{:name => "Terminator", :cohort => :February},
	{:name => "Freddy Kruger", :cohort => :February},
	{:name => "The Joker", :cohort => :February}
	]

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "-----------------"
end

def print(students)
	students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end
#nothing happens until we call the methods
print_header
print(students)
print_footer(students)