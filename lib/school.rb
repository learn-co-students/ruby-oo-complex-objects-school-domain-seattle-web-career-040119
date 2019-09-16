require "pry"
class School
  
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if @roster[grade]
      @roster[grade] << student
    else
      @roster[grade] = [student]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    final_hash= {}
    @roster.each do |grade, students|
      final_hash[grade] = students.sort
    end
    final_hash
  end

end
