class TeachersController < ApplicationController
 def index
   @school = School.find(params.fetch(:school_id))
   @teachers = @school.teachers
 end

 def show
   @teacher = School.find(params.fetch(:school_id))
   @student = Teacher.find(params.fetch(:school_id))
   @students = @teacher.students
 end

end
