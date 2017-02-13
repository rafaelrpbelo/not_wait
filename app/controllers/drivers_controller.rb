class DriversController < ApplicationController
  def index
    @drivers = Driver.all
  end

  def new
    @driver = Driver.new
  end

  def create
    @driver = DriverCreator.new(driver_params)

    if @driver.save
      redirect_to root_path, notice: 'Driver was created successfully'
    else
      render :new
    end
  end

  def show
    @driver = Driver.find(params[:id])
  end

  def edit
    @driver = Driver.find(params[:id])
  end

  def update
    @driver = Driver.find(params[:id])
    @driver.update(driver_params)

    respond_with @driver
  end

  private

  def driver_params
    params.require(:driver).permit(:name)
  end
end
