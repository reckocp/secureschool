class StudentsController < ApplicationController
  def index
    @students = Student.where(school_id: params.fetch(:school_id))
  end

end
