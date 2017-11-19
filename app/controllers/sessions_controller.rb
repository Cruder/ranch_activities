class SessionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_session, only: %i[edit update destroy]

  # GET /sessions
  def index
    @sessions = Session.includes(:activity).all
  end

  # GET /sessions/new
  def new
    @session = Session.new
  end

  # GET /sessions/1/edit
  def edit; end

  # POST /sessions
  def create
    @session = Session.new(session_params)
    if @session.save
      redirect_to sessions_path, notice: 'La participation a bien été créée.'
    else
      render :new
    end
  end

  # PATCH/PUT /sessions/1
  def update
    if @session.update(session_params)
      redirect_to sessions_path, notice: 'La participation a bien été modifiée.'
    else
      render :edit
    end
  end

  # DELETE /sessions/1
  def destroy
    @session.destroy
    redirect_to sessions_path, notice: 'La participation a bien été supprimée.'
  end

  private

  def set_session
    @session = Session.find(params[:id])
  end

  def session_params
    params.require(:session).permit(:people, :activity_id)
  end
end
