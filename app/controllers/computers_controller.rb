class ComputersController < ApplicationController
  def index
    @computers = Computer.all
  end

  def show
  end

  def new
    @computers = Computer.new
  end

  def create
    computer = Computer.create(computer_params)

    redirect_to commputers_path
  end

  private
    def computer_param
      params.require(:computer).permit(:name, :description)
    end

  def edit
  end
end
