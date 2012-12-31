class StaticPagesController < ApplicationController
  def home
  	if signed_in?
  	@task = current_user.tasks.build 
  	@todo_items = current_user.todo_list.all
  	end
  end

  def about
  end

  def help
  end

  def contact
  end
end
