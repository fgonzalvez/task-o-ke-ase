require 'tasksokease.rb'

class TasksokeaseController < ApplicationController
  def index
  	@tasksokease = Tasksokease.new
  end

end
