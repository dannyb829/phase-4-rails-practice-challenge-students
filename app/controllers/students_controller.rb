class StudentsController < ApplicationController
    before_action :find_student, only: [:show,:update,:destroy]

    def index 
        render json: Student.all
    end

    def show
        render json: @student
    end

    def create 
        render json: Student.create!(student_params)
    end 

    def update
        @student.update!(student_params)
        render json: @student
    end

    def destroy
        render json: @student.destroy!, status: 422
    end

    private

    def find_student
        @student = Student.find(params[:id])
    end

    def student_params
        params.permit(:name,:major,:age,:instructor_id)
    end
end
