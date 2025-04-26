class TaskItemsController < ApplicationController
  before_action :set_task_item, only: %i[ show edit update destroy ]

  # GET /task_items or /task_items.json
  def index
    @task_items = TaskItem.all
  end

  # GET /task_items/1 or /task_items/1.json
  def show
  end

  # GET /task_items/new
  def new
    @task_item = TaskItem.new
  end

  # GET /task_items/1/edit
  def edit
  end

  # POST /task_items or /task_items.json
  def create
    @task_item = TaskItem.new(task_item_params)

    respond_to do |format|
      if @task_item.save
        format.html { redirect_to @task_item, notice: "Task item was successfully created." }
        format.json { render :show, status: :created, location: @task_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @task_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /task_items/1 or /task_items/1.json
  def update
    respond_to do |format|
      if @task_item.update(task_item_params)
        format.html { redirect_to @task_item, notice: "Task item was successfully updated." }
        format.json { render :show, status: :ok, location: @task_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @task_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task_items/1 or /task_items/1.json
  def destroy
    @task_item.destroy!

    respond_to do |format|
      format.html { redirect_to task_items_path, status: :see_other, notice: "Task item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_item
      @task_item = TaskItem.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def task_item_params
      params.expect(task_item: [ :description, :done, :task_list_id ])
    end
end
