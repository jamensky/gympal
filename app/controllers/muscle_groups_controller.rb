class MuscleGroupsController < ApplicationController
    def index 
        @muscle_group = MuscleGroup.all
    end 

    def show
        @muscle_group = MuscleGroup.find_by(params[:id]) 
    end 

    def new 
        @muscle_group = MuscleGroup.new 
    end 

    def create 
        binding.pry
       if muscle_group = MuscleGroup.new(muscle_group_params)
          redirect_to muscle_group_path(muscle_group)
       else 
          render :new
       end 
    end 

    def muscle_group_params
        params.require(:muscle_group).permit(:name, :muscle_1, :muscle_2, :muscle_3, :muscle_4, routine_ids: [], routines_attributes: [:name])
    end 
end
