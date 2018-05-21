class ListsController < ApplicationController
  
  before_action :authenticate_user!

  before_action :set_list, only: [:show, :edit, :update , :destroy]
  before_action :set_list_deadline_time_new, only: [:new]
  before_action :set_list_deadline, only: [:show, :edit]
  #before_action :set_task, only: [:show]
 
  def index
    @lists = current_user.lists.all
  end

  def show   
  end

  def new
    @list = current_user.lists.build
  end

  def create
    
    @list = current_user.lists.build(list_params)
    seton_create
    set_list_deadline 
    puts "    AQUI ESTA EL PUT" 
    puts list_params 
    respond_to do |format|
      if @list.save
        format.html { redirect_to @list, notice: ' list was successfully created.' }
        format.json { render :show, status: :created, location: @list }
      else
        format.html { render :new }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit 

  end

 
  def update    
    @list.update(list_params)
    seton_update
    set_list_deadline 
    set_completeness
    respond_to do |format|
      if @list.save
        format.html { redirect_to @list, notice: ' list was successfully updated.' }
        format.json { render :show, status: :ok, location: @list }
      else
        format.html { render :edit }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @list.destroy
    respond_to do |format|
      format.html { redirect_to lists_url, notice: ' list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
  
    def set_list
      @list = List.find(params[:id])
    end

    def seton_create
      @setat = DateTime.current 
    end

    def seton_update
      @list.set_at = @list.created_at
    end

    def set_list_deadline_time_new
      @deadline = DateTime.current
    end
    
    def set_list_deadline
      if @list.tasks.length <= 0
        @list.deadline_at = DateTime.current
      else
        @list.deadline_at = @list.tasks.map(&:deadline_at).max
      end  
    end

    def set_completeness
      if @list.tasks.length == 0
        @list.status = 0
      else
       @list.status = @list.tasks.average(:status_value).to_f.round
      end
    end

  #  def set_task      
  #    @task = @list.tasks.find(params[:id])#.status
  #    @taskd = @list.tasks.find(params[:id])#.done_at
  #  end
  ##  



    def list_params
      params
        .require(:list)
        .permit(:id, :name, :set_at, :deadline_at, :done_at, :status, :created_at, tasks_attributes: Task.attribute_names.map(&:to_sym).push(:_destroy))
    end
end