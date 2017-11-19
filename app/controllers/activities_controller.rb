class ActivitiesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_activity, only: %i[edit update destroy relative]

  # GET /activities
  def index
    @activities = Activity.all.order(updated_at: :desc)
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
      redirect_to activities_path, notice: "L'activité a bien été créée."
    else
      render :new
    end
  end

  # PATCH/PUT /activities/1
  def update
    if @activity.update(activity_params)
      redirect_to activities_path, notice: "L'activité a bien été modifiée."
    else
      render :edit
    end
  end

  # DELETE /activities/1
  def destroy
    @activity.destroy
    redirect_to activities_path, notice: "L'activité a bien été supprimée."
  end

  def relative
    return if @activity.people.zero? && params[:value].to_i < 0

    @activity.people += params[:value].to_i
    @activity.save
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:name, :people)
  end
end
