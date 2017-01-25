require_relative 'ruby_prac'

describe Student  do 
	let(:student) {Student.new("Elrey")}

	it "stores the name given at initialize" do
		expect(student.name).to eq "Elrey"
	end

	it "start off with no subjects" do
		expect(student.subjects).to include ({})
	end

	it "add class to subjects" do 
		student.enroll("Biology 1")
		student.enroll("Math 1")
		expect(student.subjects).to include ({"Biology 1" => [], "Math 1" => []})
	end

	it "adds student's grade" do
		student.enroll("Biology 1")
		expect(student.add_grade("Biology 1", 80)).to eq true
	end

	it "print a string" do
		student.enroll("Math 1")
		expect(student.add_grade("Biology 1", 80)).to eq "Sorry, Elrey is not in that class."
	end

	it "subjects average score" do
		student.enroll("Biology 1")
		student.add_grade("Biology 1", 80)
		student.add_grade("Biology 1", 30)
		student.add_grade("Biology 1", 90)
		p student.subjects
		expect(student.average("Biology 1")).to eq 66
	end

	it "prints a string" do
		student.enroll("Biology 1")
		student.add_grade("Biology 1", 80)
		student.add_grade("Biology 1", 30)
		student.add_grade("Biology 1", 90)
		student.enroll("Math 1")
		student.add_grade("Math 1", 80)
		student.add_grade("Math 1", 30)
		student.add_grade("Math 1", 80)
		student.average("Math 1")
		p student.subjects
		expect(student.to_s).to eq "Student Elrey has an average score of 66 in Biology 1, an average score of 63 in Math 1."
	end
end