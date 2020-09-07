class WorksController < ApplicationController
    def index
         @works = Work.all
    end
    
    def new
        @work = Work.new
    end 
    
    def create
    Work.create(work_params)
    redirect_to action: :index
    end
    
    private
    def work_params
    params.require(:work).permit(:work_type, :school, :gakunen, :ninzu, :teiinn, :start, :end, :bikou)
    end
end
