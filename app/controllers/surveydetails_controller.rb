class SurveydetailsController < ApplicationController
  before_filter :set_surveydetail, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  respond_to :html

  def index
    @surveydetails = Surveydetail.all
    respond_with(@surveydetails)
  end

  def show
    @surveydetail = Surveydetail.find(params[:id])
    # @surveydetail.id
    # @survey=Question.get_data(@surveydetail.id)
     respond_with(@surveydetail)
  end

  def new
    @surveydetail = Surveydetail.new
    respond_with(@surveydetail)
  end

  def edit
  end

  def create
    @surveydetail = Surveydetail.new(params[:surveydetail])
    @surveydetail.save
    #respond_with(@surveydetail)
    redirect_to surveydetails_path
  end

  def update
    @surveydetail.update_attributes(params[:surveydetail])
    respond_with(@surveydetail)
  end

  def destroy
    @surveydetail.destroy
    respond_with(@surveydetail)
  end

 # def user_show
  # @surveydetail = Surveydetail.find(params[:id])
  #end

  private
    def set_surveydetail
      @surveydetail = Surveydetail.find(params[:id])
    end
end

