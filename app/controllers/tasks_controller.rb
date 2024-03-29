class TasksController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user,   only: :destroy


 	def create
 		@task = current_user.tasks.build(params[:task])
 		if @task.save
      flash[:success] = "Item added to your to-do list!"
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
