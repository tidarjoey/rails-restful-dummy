class ComputersController < ApplicationController
  def index
    @computers = Computer.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
