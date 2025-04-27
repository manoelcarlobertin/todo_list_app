class TaskListsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_task_list, only: %i[ show edit update destroy ]

  def index
    @task_lists = current_user.task_lists.order(created_at: :desc).page(params[:page])
  end

  def show
    @task_item = @task_list.task_items.build
    @task_items = @task_list.task_items.order(created_at: :desc)
  end

  def new
    @task_list = current_user.task_lists.build
  end

  def edit;end

  def create
    @task_list = current_user.task_lists.build(task_list_params)

    if @task_list.save!
      redirect_to @task_list, notice: "Lista criada com sucesso."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @task_list.update(task_list_params)
      redirect_to @task_list, notice: "Lista atualizada com sucesso."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @task_list.destroy!
    redirect_to task_lists_path, notice: "Lista removida."
  end

  private

  def set_task_list
    @task_list = current_user.task_lists.find(params.expect(:id))
  end

  def task_list_params
    params.expect(task_list: [ :title, :user_id ]) # params.require(:task_list).permit(:title, :user_id) MESMA COISA
  end
end
