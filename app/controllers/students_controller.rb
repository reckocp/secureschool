class StudentsController < ApplicationController
 def index
   @school = School.find(params.fetch(:school_id))
   @students = @school.students
   @courses = @school.courses

 end

 def show
   @teacher = School.find(params.fetch(:school_id))
   @student = Teacher.find(params.fetch(:school_id))
   @course = Student.find(params.fetch(:school_id))
   @courses = @student.courses

 end
end
