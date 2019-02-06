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

    redirect_to commputer_path
  end

  def edit
    @computer = Computer.find(params[:id])
  end

  def update
    @computer = Computer.find(params[:id])
    @computer.update(computer_params)

    redirect_to commputer_path(@computer)
  end

  private
    def computer_param
      params.require(:computer).permit(:name, :description)
    end

  def edit
  end
end
