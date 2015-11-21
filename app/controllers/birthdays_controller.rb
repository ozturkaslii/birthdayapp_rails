class BirthdaysController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy]
  def index
  	@birthdays = Birthday.all
  end

  def new
  	@birthday = Birthday.new
  end

  def create
  	 @birthday = Birthday.new(birthday_params)

  	 if @birthday.save
  		  redirect_to root_path
  	 else
  		  render 'new'
  	 end
  end

  def show
  end

  def edit
  end

  def update
  	if @birthday.update(birthday_params)
  		redirect_to root_path
  	else
  		render 'edit'
  	end
  end

   def destroy
      @birthday.destroy
      redirect_to root_path
    end

  private

  def find_post
  	@birthday = Birthday.find(params[:id])
  end

  def birthday_params
  	params.require(:birthday).permit(:name, :surname, :birthday)
  end
  	
end
