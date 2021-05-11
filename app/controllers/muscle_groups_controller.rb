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
        muscle_group = MuscleGroup.create(muscle_group_params)
        redirect_to muscle_group_path(muscle_group)
    end 

    def muscle_group_params
        params.require(:muscle_group).permit(:name, :routine_ids => [])
    end 
end
