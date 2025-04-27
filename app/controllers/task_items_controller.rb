class TaskItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_task_list
  before_action :set_task_item, only: %i[ update destroy ]

  # def index
  #   @task_items = TaskItem.all
  # end

  # # GET /task_items/1 or /task_items/1.json
  # def show
  # end

  # # GET /task_items/new
  # def new
  #   @task_item = TaskItem.new
  # end

  # # GET /task_items/1/edit
  # def edit
  # end

  def create
    @task_item = @task_list.task_items.build(task_item_params)

    if @task_item.save
      render turbo_stream: turbo_stream.append(
      "task_items_#{@task_list.id}",
      partial: "task_items/item",
      locals: { task_item: @task_item }
      )
    else
      render turbo_stream: turbo_stream.replace(
      "task_item_form_#{@task_list.id}",
      partial: "task_items/form",
      locals: { task_list: @task_list, task_item: @task_item }
      ), status: :unprocessable_entity
    end
  end

  def update
    @task_item.update(task_item_params)
    render turbo_stream: turbo_stream.replace(
    dom_id(@task_item),
    partial: "task_items/item",
    locals: { task_item: @task_item }
    )
  end

  def destroy
    @task_item.destroy
    render turbo_stream: turbo_stream.remove(dom_id(@task_item))
  end

  private

  def set_task_list
    @task_list = current_user.task_lists.find(params[:task_list_id])
  end

  def set_task_item
    @task_item = @task_list.task_items.find(params[:id])
  end

  def task_item_params
    params.expect(task_item: [ :description, :done, :task_list_id ]) # params.require(:task_item).permit(:description, :done)
  end
end
