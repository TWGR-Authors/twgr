class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end
  attr_accessor :name
  attr_accessor :grade
end

class GradeSheet
  def initialize(students)
    @students = students
  end

  def to_proc
    Proc.new do |students|
      @students.each do |student|
        puts "Name: #{student.name}, grade: #{student.grade}"
      end
    end
  end
end

students = [
  Student.new("david", "B"),
  Student.new("Joe", "A")
]

sheet = GradeSheet.new(students)
students.map(&sheet)
