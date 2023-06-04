class Api::V1::FactsController < ApplicationController

  before_action :find_fact, only: [:show, :update, :destroy]
  def index
    @user = User.find(params[:user_id])
    @facts = @user.facts
    puts @facts
    render json: @facts, status: 200
  end

  def create
    @fact = Fact.new(fact_params)
    puts @fact
    if @fact.save
      render json: @fact, status: 200
    else
      render json: { error: 'Fact creation failed!' }, status: 400
    end
  end

  def show
    render json: @fact
  end

  def update
    if @fact
      @fact.update(fact_params)
      render json: { message: 'Fact Updated!' }, status: 200
    else
      render json: { error: 'Fact updating failed!' }, status: 400
    end
  end

  def destroy
    if @fact
      @fact.destroy
      render json: { message: 'Deleted!' }, status: 200
    else
      render json: { error: 'Fact updating failed!' }, status: 400
    end
  end

  private

  def fact_params
    params.require(:fact).permit(:fun_fact, :likes, :user_id)
  end

  def find_fact
    @fact = Fact.find(params[:id])
  end
end
