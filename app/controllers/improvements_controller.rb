class ImprovementsController < ApplicationController

  before_action :authenticate_user!, :except => [:index]
  before_action :set_improvement, only: [:show, :edit, :update , :destroy, :upvote, :downvote]

  def index
    @improvements = Improvement.all.order(:cached_votes_up => :desc)   
  end

  def show   
  end

  def new
    @improvement = current_user.improvements.build
  end

  def create    
    @improvement = current_user.improvements.build(improvement_params)
    respond_to do |format|
      if @improvement.save
        format.html { redirect_to improvements_path, notice: 'Improvement was successfully created. Thanks!' }
        format.json { render :show, status: :created, location: @improvement }
      else
        format.html { render :new }
        format.json { render json: @improvement.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit    
  end
 
  def update    
    @improvement.update(improvement_params)
    respond_to do |format|
      if @improvement.save
        format.html { redirect_to improvements_path, notice: 'Improvement was successfully updated. Thanks!' }
        format.json { render :show, status: :ok, location: @improvement}
      else
        format.html { render :edit }
        format.json { render json: @improvement.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @improvement.destroy
    respond_to do |format|
      format.html { redirect_to improvements_url, notice: 'improvement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upvote
    @improvement.upvote_from current_user
    redirect_to improvements_path
  end

  def downvote
    @improvement.downvote_from current_user
    redirect_to improvements_path
  end


  private  
    def set_improvement
      @improvement = Improvement.find(params[:id])
    end

    def improvement_params
      params
        .require(:improvement).permit(:improvement, :reply, :status, :status_value, :set_at, :done_at)
    end
end

