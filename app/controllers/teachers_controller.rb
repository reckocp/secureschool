class TeachersController < ApplicationController
  def index
    @school = School.find(params.fetch(:school_id))
    @teachers = Teacher.where(school_id: params.fetch(:school_id))
    @teacher = Teacher.find(params.fetch(:teacher_id))
  end

end
