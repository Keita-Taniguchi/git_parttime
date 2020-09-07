class WorksController < ApplicationController
    
    before_action :move_to_index, except: :index
    
    def index
    @works = Work.order("start DESC").page(params[:page]).per(5)
    end
    
    def new
    @work = Work.new
    end 
    
    def create
    Work.create(work_params)
    redirect_to action: :index
    end
    
    def destroy
    work = Work.find(params[:id])
    work.destroy
    redirect_to action: :index
    end
    
    def edit
    @work = Work.find(params[:id])
    end

    def update
     work = Work.find(params[:id])
     work.update(work_params)
     redirect_to action: :index
    end 
      
    private
    def work_params
    params.require(:work).permit(:work_type, :school, :gakunen, :ninzu, :teiinn, :start, :end, :bikou)
    end
 
    def move_to_index
         redirect_to action: :index unless admin_signed_in?
    end 
end  