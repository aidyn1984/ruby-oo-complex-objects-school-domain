# require "pry"


class School

    attr_accessor :name 

    def initialize(name, roster=({}))
        @name = name
        @roster = roster
    end

    def roster
        @roster = Hash.new
    end

    def roster
        @roster
    end


    def add_student(name, grade)
        roster[grade] ||= []
        roster[grade] << name
        roster
    end

    def grade(grade)
        roster[grade]
        # binding.pry
    end

    
    def sort
        sorted = {}
        roster.map do |grade, students|
            sorted[grade] = students.sort
        end
        sorted
            

        # binding.pry
    end


end


school = School.new("Bayside High School")

school.add_student("Homer Simpson", 9)
school.add_student("Bart Simpson", 9)
school.add_student("Avi Flombaum", 10)
school.add_student("Jeff Baird", 10)
school.add_student("Blake Johnson", 7)
school.add_student("Jack Bauer", 7)


school.roster
school.sort




# binding.pry





