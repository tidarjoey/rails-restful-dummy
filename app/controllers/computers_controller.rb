class ComputersController < ApplicationController
  def index
    @computers = Computer.all
  end

  def show
    @computer = Computer.find(params[:id]);
  end

  def new
    @computer = Computer.new
  end

  def create
    @computer = Computer.create(computer_param)

    redirect_to computer_path(@computer)
  end

  def edit
    @computer = Computer.find(params[:id])
  end

  def update
    @computer = Computer.find(params[:id])
    @computer.update(computer_param)

    redirect_to computer_path(@computer)
  end

  private
  def computer_param
    params.require(:computer).permit(:name, :description)
  end

end
