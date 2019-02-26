class TasksController < ApplicationController
  def index
    # ------------------------------> GET /restaurants
    @tasks = Task.all
  end

  def new
    # ------------------------------> GET /restaurants/new
  end

  def create
    # ------------------------------> POST /restaurants
  end

  def show
    # ------------------------------> GET /restaurants/:id
    @task = Task.find(params[:id])
  end

  def edit
    # ------------------------------> GET /restaurants/:id/edit
    @task = Task.find(params[:id])
  end

  def update
    # ------------------------------> PATCH /restaurants/:id
    @task = Task.find(params[:id])
    @task.save
  end

  def destroy
    # ------------------------------> DELETE /restaurants/:id
    @task = Task.find(params[:id])
    @task.destroy
  end
end
