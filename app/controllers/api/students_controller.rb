class Api::StudentsController < ApplicationController
  def index
    @students = Student.all
    render 'index.json.jbuilder'
  end

  def create
    @student = Student.new(
                            first_name: params[:first_name],
                            last_name: params[:last_name],
                            birthday: params[:birthday],
                            age: params[:age],
                            school: params[:school],
                            grade: params[:grade],
                            college: params[:college],
                            major: params[:major],
                            bio: params[:bio],
                            final_project: params[:final_project]
                          )

    if @studenet.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @student.errors.full_message}, status: :unprocessable_entity
    end
  end

  def show
    @student = Student.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @student = Student.find(params[:id])

    @student.first_name = params[:first_name] || @student.first_name
    @student.last_name = params[:last_name] || @student.last_name
    @student.birthday = params[:birthday] || @student.birthday
    @student.age = params[:age] || @student.age
    @student.school = params[:school] || @student.school
    @student.grade = params[:grade] || @student.grade
    @student.college = params[:college] || @student.college
    @student.major = params[:major] || @student.major
    @student.bio = params[:bio] || @student.bio
    @student.final_project = params[:final_project] || @student.final_project

    if @student.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @student.errors.full_message}, status: :unprocessable_entity
    end
  end

  def destroy
    student = Student.find(params[:id])
    student.destroy

    render json: {message: "Successfully removed student"}
  end
end
