require './ruby_prac'
# Once you've created the student class you can also add a menu that requests user info. For instance, it could look like:

puts "Hello, welcome to Student Control System 1.0"
puts "Student Control System 1.0 menu:"
puts "1 - Create student"
puts "2 - Delete a student"
puts "3 - List students"
puts "4 - Enroll student"
puts "5 - Add Grade"
print "What would you like to do: "
	input = gets.chomp
	case input
	when "1"
		print "What is the student's name: "
		name = gets.chomp
		student = Student.new(name)
		puts "#{name} id is " + student.subjects.index(name).to_s + " and has been added."
	end

# If user inputs "1" you can ask: "What's the student name?" and create a new student instance and put it in an array of Students. You could then return the index and say "Student {0} has been added"
# If user inputs "2" you can delete a student by the student index
# If user inputs "3" you can call the student toString method for each student
# If user inputs "4" you can ask: "Which student do you want to enroll to a class?" and use the value to get the index in the students array. If the student is found ask for "which class do you want to enroll this student to?"
# If user inputs "5" you would proceed like in "4" but also ask for a Grade