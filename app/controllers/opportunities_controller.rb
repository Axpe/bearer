class OpportunitiesController < ApplicationController
  
  def index
    @opportunities = Opportunity.all
  end
  
  def new 
    @opportunity = Opportunity.new
  end
  
  def create
    @opportunity = Opportunity.new(opportunity_params)

    if @opportunity.save
      redirect_to @opportunity
    else
      render 'new'
    end
  end
  
  def destroy
    @opportunity = Opportunity.find(params[:id])
    @opportunity.destroy
 
    redirect_to opportunities_path
  end
  
  def show
    @opportunity = Opportunity.find(params[:id])
  end
  
  def update
    @opportunity = Opportunity.find(params[:id])

    if @opportunity.update(opportunity_params)
      redirect_to @opportunity
    else
      render 'edit'
    end
  end
  
  def edit
    @opportunity = Opportunity.find(params[:id])
  end
  
  private
  def opportunity_params
    params.require(:opportunity).permit(:name, :description, :amount, :closedate, :stagename)
  end
  
end