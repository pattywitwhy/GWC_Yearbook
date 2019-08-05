class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render 'index.json.jbuilder'
  end

    def show
      @user = User.find(params[:id])
      render 'show.json.jbuilder'
    end

  def create
    user = User.new(
                      name: params[:name],
                      email: params[:email],
                      password: params[:password],
                      password_confirmation: params[:password_confirmation],
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
    if user.save
      render json: {message: "User created successfully"}, status: :created
    else
      render json: {errors: user.erros.full_messages}, status: :bad_request
    end
  end

  def update
    @user = User.find(params[:id])

    @user.first_name = params[:first_name] || @user.first_name
    @user.last_name = params[:last_name] || @user.last_name
    @user.birthday = params[:birthday] || @user.birthday
    @user.age = params[:age] || @user.age
    @user.school = params[:school] || @user.school
    @user.grade = params[:grade] || @user.grade
    @user.college = params[:college] || @user.college
    @user.major = params[:major] || @user.major
    @user.bio = params[:bio] || @user.bio
    @user.final_project = params[:final_project] || @user.final_project

    if @user.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @user.errors.full_message}, status: :unprocessable_entity
    end
  end
end
