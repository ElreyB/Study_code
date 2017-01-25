# Create a student class that can be initialized with a name
class Student
# A student has a name and a hash of subjects that is studying. 
# When we create a student the student is not studying anything yet. 
# We need to enroll him to some classes	
attr_reader :name, :subjects, :average_score
	
	def initialize(name)
		@name = name
		@subjects = {}
	end
# Create a method for the student class that enrolls a student into a subject. For instance if we wanted the student to enroll to a "Biology 1" class we would call student.enroll('Biology 1')
	def enroll(subject)
		subjects[subject] = []
		subjects
	end
# We also want to keep track of the scores that each student gets at each
# class so we'll create a method called 'addGrade' that takes a subject and a score from 0 to a 100. 
# If the subject is not a subject for which the student is enrolled return "Nice try but {student name} isn't even on that class!".
# Otherwise add the score to the hash of subjects containing scores and return true
	def add_grade(subject, score)
		if subjects.has_key?(subject) == true
			subjects[subject].push(score)
			return true
		else
			"Sorry, #{name} is not in that class."
		end
	end

	def average(subject)
		@average_score = 0
		i = 0
		for i in i..subjects[subject].length-1
			@average_score += subjects[subject][i]
		end
		@average_score /= subjects[subject].length
	end
# create a toString method that will return a string for the student instance that looks like this:
#
#"Student {student name} has an average score of {average} in {class name}, an average score of {average2} in {class name 2}"
	def to_s
		student = "Student #{name} has"
		average_phrase = ""
			subjects.each_key do |subject|
			average_phrase += " an average score of " 
			average_phrase += average(subject).to_s 
			average_phrase += " in #{subject},"
			end
		average_phrase[-1] = "."
		student + average_phrase
	end

end