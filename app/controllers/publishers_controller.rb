class PublishersController < ApplicationController
  def index
    @publishers= Publisher.all
  end
 

  def new
    @page_title = 'Add New Publisher'
    @publisher = Publisher.new
  end

 def create
  
   if @publisher.save  
      flash[:notice] = "Publisher Created"

      redirect_to publishers_path
    else
      render 'new'
    end
  end

  def update
   @publisher = Publisher.new(publisher_params)

    @publisher.update(publisher_params)

    flash[:notice] = 'Publisher Updated'

    redirect_to publishers_path
  end

  def edit
    @publisher = Publisher.find(params[:id])
  end


 def destroy
    @publisher = Publisher.find(params[:id])

    @publisher.destroy

    flash[:notice] = 'Publisher Removed'

    redirect_to publishers_path
  end
  
   private 
  def publisher_params
    params.require(:publisher).permit(:name)
  end
end
