class SchoolsController < ApplicationController
  def index
    @schools = School.all
  end

  def show
    @school = School.find(params.fetch(:id))
    @teachers = Teacher.where(school_id: params.fetch(:school_id))
    @teacher = Teacher.find(params.fetch(:teacher_id))
  end
end
