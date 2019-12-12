class CohortsController < ApplicationController
  before_action: :get_all_cohorts, only: [:index, :destroy]
  before_action: :find_cohort_by_id, only: [:show, :destroy]

  def index
    render json: @cohorts
  end

  def show
    render json: @cohort 
  end

  def create
    @cohort = Cohort.new(cohort_params)
    if @cohort.save
      render json: @cohort
    else
      render json: error.message
    end
  end

  def destroy
    @cohort.destroy 
    render json: @cohorts 
  end

  private

  def cohort_params
    params.require(:cohort).permit(:name, :graduated, :id)
  end

  def get_all_cohorts
    @cohorts = Cohort.includes(:students).all 
  end

  def find_cohort_by_id
    @cohort = Cohort.includes(:students).find(params[:id])
  end

end

# @companies = Company.joins(:persons).where(:persons => { active: true } ).all
# @companies.each do |company| 
#   company.name 
# end


# @companies = Company.includes(:persons).where(:persons => { active: true } ).all
# @companies.each do |company|
#      company.person.name
# end