class RatesController < ApplicationController

	before_action :find_params, only:[:show,:destroy,:edit]


  def base
  	@rates = Rate.all
  end

  def edit
  end

  def update

  	if @rates.update(get_params)

  		redirect_to rates_base_path

  	else
  		render 'edit'
  		
  	end
  	
  end

  def new
  	@rates = Rate.new
  end

  def create
  	@rates = Rate.new(get_params)
  	if @rates.save

  		redirect_to rates_base_path

  	else

  		render 'new'
  		
  	end
  end

  def show
  end

  def destroy

  	@rates.destroy
  	  redirect_to rates_base_path
  	
  end



  private

  def get_params

  	params.require(:rate).permit(:title,:price,:hour,:desp)

  end


  def find_params

  	@rates = Rate.find(params[:id])
  end


end
