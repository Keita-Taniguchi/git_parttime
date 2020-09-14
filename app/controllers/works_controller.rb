class WorksController < ApplicationController
    
    before_action :move_to_index, except: [:index, :search]
    
    def index
    @works = Work.order("start DESC").page(params[:page]).per(5)
    @reservation = Reservation.new 
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
    @works = Work.order("start DESC").page(params[:page]).per(5)
    end
    
    def edit
    @work = Work.find(params[:id])
    end

    def update
     work = Work.find(params[:id])
     work.update(work_params)
     redirect_to action: :index
    end 
    
    def search
    @works = Work.where(start: "#{params[:work]}")
    @reservation = Reservation.new 
    end
      
    private
    def work_params
    params.require(:work).permit(:work_type, :school, :gakunen, :ninzu, :teiinn, :start, :end, :bikou)
    end
 
    def move_to_index
         redirect_to action: :index unless admin_signed_in? 
    end 
end  