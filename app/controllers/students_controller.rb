class StudentsController < ApplicationController
    
    def index
        students = Student.all
        render json: students
    end

    @@students = Student.order(:grade).reverse
    def grades
       render json: @@students
    end    

    def highest_grade
        
        render json: @@students.first
    end

end
