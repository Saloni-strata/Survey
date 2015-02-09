class SurveyController < ApplicationController

  layout "user"
  def index
  	@surveydetail = Surveydetail.find(params[:id])


  end

  def thanks
  	#redirect_to  survey_thanks_path
    @uemail= params[:email]
    @surveydetail = Surveydetail.find(params[:surveydetail_id])
   
    @u = UserDetail.new(:uemail => @uemail, :surveydetail_id => @surveydetail.id)
    @u.save!

    @options = params[:answers] || []
    @options.each do |i,a|
       ur = UserResponse.new(:answer => a,:question_id => i, :user_id => @u.id)
       ur.save!
    end
	
  end
end

  
