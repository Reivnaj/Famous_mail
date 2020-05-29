class EmailController < ApplicationController
  def index
    @emails = Email.all
  end

  def new
    @email = Email.create(object: Faker::Company.buzzword, body: Faker::ChuckNorris.fact)
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end

  def show
    @email = Email.find(params[:id])
  
  	respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end
end
