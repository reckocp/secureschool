
class CoursesController < ApplicationController
 def index
   @school = School.find(params.fetch(:school_id))
   @students = @school.students
   @courses = @school.courses
 end


end
