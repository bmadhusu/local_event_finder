class TweetersController < ApplicationController

  layout 'admin'


  def index
    @tweeters = Tweeter.all
  end

  def show
    @tweeter = Tweeter.find(params[:id])
  end
  
  def new
    @tweeter = Tweeter.new
  end
  
  def create
    # Instantiate a new object using form parameters
    @tweeter = Tweeter.new(tweeter_params)

    # save the tweeter
    if @tweeter.save
      flash[:notice] = "Tweeter created successfully."
      redirect_to(tweeters_path)
    else
      render('new')
      
    end
  end
  
  def edit
    @tweeter = Tweeter.find(params[:id])
  end
  
  def update
    @tweeter = Tweeter.find(params[:id])

    # save the tweeter
    if @tweeter.update_attributes(tweeter_params)
      flash[:notice] = "Tweeter updated successfully."
      redirect_to(tweeter_path(@tweeter))
    else
      render('edit')
      
    end
  end
  
  def delete
    @tweeter = Tweeter.find(params[:id])
  end

  def destroy
    @tweeter = Tweeter.find(params[:id])
    @tweeter.destroy
    flash[:notice] = "Tweeter '#{@tweeter.name}' deleted successfully."
    redirect_to(tweeters_path)
  end

  private

  def tweeter_params
        params.require(:tweeter).permit(:name, :twitter_handle, :type_of_tweeter)
  end

end
