class TasksController < ApplicationController
  
   def index
    @task =Task.new
	  @tasks = Task.all
    @summary = Summary.new(@tasks)
  	# @tasks_sum_hours = Task.sum('task_etc')/60
  	# @tasks_sum_minutes = Task.sum('task_etc')%60
  	# @rewards_sum_hours = Task.sum('reward_etc')/60
  	# @rewards_sum_minutes = Task.sum('reward_etc')%60
  end

 	def create
 		@task = Task.new(params[:task])
 		if @task.save
 			redirect_to '/tasks'
 			#Handle a successful save.
 		else
      @tasks = Task.all
 			render 'index'
 		end
 	end
end
