class StudentsController < ActionController::API
    def index
        stu = Student.all
        render json: stu
    end

    def grades
       students = Student.all.order(grade: :desc)
       render json: students
    end
end