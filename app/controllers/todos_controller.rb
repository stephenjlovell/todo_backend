class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :update, :destroy]

  # GET /todos
  def index
    @todos = Todo.all
    render 'todos/index.json.jbuilder'
  end

  # GET /todos/1
  def show
    render 'todos/show.json.jbuilder'
  end

  # POST /todos
  def create
    @todo = Todo.new(todo_params)

    if @todo.save
      render 'todos/show.json.jbuilder', status: :created
    else
      render json: @todo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /todos/1
  def update
    if @todo.update(todo_params)
      render 'todos/show.json.jbuilder'
    else
      render json: @todo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /todos/1
  def destroy
    @todo.destroy
  end

  def destroy_all
    Todo.delete_all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo
      @todo = Todo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def todo_params
      params.require(:todo).permit(:title, :completed, :order)
    end
end
