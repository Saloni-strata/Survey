class QuestionsController < ApplicationController
  before_filter :set_question, only: [:show, :edit, :update, :destroy]
  respond_to :html
  before_filter :authenticate_user!

  def index
    @surveydetail_id = params[:surveydetail_id] if params[:surveydetail_id].present? 
    @questions = Question.all
    respond_with(@questions)
  end

  def show
    @question = Question.find(params[:id])
    # respond_with(@question)
  end

  def new
    @question = Question.new
    @surveydetail = Surveydetail.find(params[:surveydetail_id])
    respond_with(@question)
  end

  def edit
    # 
   @question = Question.find(params[:id])
   #@surveydetail = Question.find(params[:id])
   @surveydetail = Surveydetail.find_by_id(@question.surveydetail_id)
   #@surveydetail_id = params[:surveydetail_id] if params[:id].present? 
  end

  def create
    @question = Question.new(params[:question])
    if @question.save
      options = params[:options] || []
      options.each do |a|
        Option.create(:answer => a,:question_id => @question.id)
      end
      redirect_to question_path(@question.id)
    else
      @surveydetail = Surveydetail.find_by_id(params[:question][:surveydetail_id])
      render :new
    end
    # respond_with(@question)
  end

  def update
    @question.update_attributes(params[:question])
    respond_with(@question)
  end

  def destroy
    @question.destroy
    respond_with(@question)
  end

  private
    def set_question
      p @question = Question.find(params[:id])
    end
end
