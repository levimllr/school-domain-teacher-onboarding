require "pry"

# code here!
class School
    attr_accessor
    attr_reader :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        if roster.include?(grade)
            roster[grade] << student
        else
            roster[grade] = []
            roster[grade] << student
        end
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        roster.each do |grade, students|
            roster[grade] = students.sort
        end
        return roster
    end
end