# frozen_string_literal: true

class ActivitiesController < ApplicationController
  before_action :set_activity, only: %i[show edit update destroy]

  # GET /activities
  def index
    @activities = Activity.all
  end

  # GET /activities/1
  def show
    render Activities::Show.new(activity: @activity)
  end

  # GET /activities/new
  def new
    @activity = Activity.new
  end

  # GET /activities/1/edit
  def edit; end

  # POST /activities
  def create
    @activity = Activity.new(activity_params)

    if @activity.save
      redirect_to @activity, notice_sucess: notice_sucess(Activity, :create)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /activities/1
  def update
    if @activity.update(activity_params)
      redirect_to @activity, notice_sucess: notice_sucess(Activity, :update)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /activities/1
  def destroy
    @activity.destroy
    redirect_to activities_url, notice_sucess: notice_sucess(Activity, :destroy), status: :see_other
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_activity
    @activity = Activity.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def activity_params
    params.require(:activity).permit(:name, :co2_kg)
  end
end
