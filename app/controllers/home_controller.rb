class HomeController < ApplicationController

  def index
    @product = Products.find(:all);
  end

  def new
    @product = Products.new
  end 

  def create
    @product = Products.new(params[:products])
    @email = params[:products]["email"].to_s
    if !@email.match(/^(.+)@([^\(\);:,<>]+\.[a-zA-Z]{2,4})/).nil?
      if @product.save
        flash[:notice] = "Successfully created."
        redirect_to "/"
      else
        render :action => 'new'
      end
    else
      render :action => 'new'
    end
  end
end
