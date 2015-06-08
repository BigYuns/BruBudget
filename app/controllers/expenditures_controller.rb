class ExpendituresController < ApplicationController
  def index
  	@expenditures=Expenditure.all
  end

  def show
  	@expenditure=Expenditure.find params[:id]
  end

 def create
 	@expenditure=Expenditure.new(expenditure_params)
 	if @expenditure.save
 		redirect_to @expenditure
 	else
 		render 'new'
 	end
 end

 def new
 	@expenditure=Expenditure.new 
 end

 def edit
 	@expenditure=Expenditure.find params[:id]
 	end

 def destroy
 	@expenditure=Expenditure.find params[:id]
 	@expenditure.destroy

 	redirect_to expenditures_path 
 end

 def update
 	@expenditure=Expenditure.find params[:id]
 		if @expenditure.update(expenditure_params)
 			redirect_to @expenditure
 		else
 			render 'edit'
 		end

 end

 def total_price
 	puts 'hello'
 	total_price=0
 	@expenditures.each do |expenditure|
 		puts 'each loop'
 		total_price+=expenditure.price
 	end
 	puts @total_price

 end
 
 private
 	def expenditure_params
 		params.require(:expenditure).permit(:name, :price, :number, :purpose)
 	end

end
