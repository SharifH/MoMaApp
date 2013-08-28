class PaintingsController < ApplicationController

  def new #get
    @painting = Painting.new
  end

  def create #post
		p = Painting.new(params[:painting])
		if p.save
			redirect_to p
		else
			render :new
		end
	end

  def index #get read multiple objects
    @paintings = Painting.all
  end

  def show #get read one objectexit
    @painting= Painting.find(params[:id])
  end

  def edit #get
  	@painting = Painting.find(params[:id])

  end

  def update #post
  	@painting = Painting(params[:id])
  	if @painting.update_attributes(params[:painting])
  		redirect_to painting_path
  	end
  end

  def destroy #delete
  	@painting = Painting.find(params[:id])
  	if @painting.destroy
  		redirect_to paintings_path
  	else
  		flash[:notice] = "Didn't work"
  	end
  end

end