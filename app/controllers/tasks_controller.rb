class TasksController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user,   only: :destroy

  #WON'T NEED THIS ANYMORE IF SHOW TASKS ON USER HOME PAGE
   #def index
    #@task =Task.new
	  #@tasks = Task.all
    #@summary = Summary.new(@tasks)
  	# @tasks_sum_hours = Task.sum('task_etc')/60
  	# @tasks_sum_minutes = Task.sum('task_etc')%60
  	# @rewards_sum_hours = Task.sum('reward_etc')/60
  	# @rewards_sum_minutes = Task.sum('reward_etc')%60
  #end

 	def create
 		@task = current_user.tasks.build(params[:task])
 		if @task.save
      flash[:success] = "Task added to your to-do list!"
 			redirect_to root_url
 		else
      @todo_items = []
      render 'static_pages/home'
 		end
 	end

  def destroy
    @task.destroy
    redirect_to root_url
  end

  private

      def correct_user
        @task = current_user.tasks.find_by_id(params[:id])
        redirect_to root_url if @task.nil?
      end
end
