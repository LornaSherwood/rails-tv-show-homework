class ShowsController < ApplicationController
  protect_from_forgery with: :null_session
  
  def index
  shows = Show.all
  render :json => shows.as_json(methods: :staying_power)
  end

  def show
    show = Show.find(params[:id])
    render :json => show.as_json(methods: :staying_power)
  end

  def create
    show = Show.create( show_params )
    render :json => show #convention to return what is created
  end

  def update
    show = Show.find(params[:id])
    if show.update_attributes(show_params)
      render json: show
    else
      render json: {status: :update_failed}
    end
  end

  def destroy
    show = Show.find(params[:id])
    if show.destroy!
      render :json => { status: :success  }
    else
      render :json => { status: :delete_failed }
    end
  end

  private
  def show_params
    params.require(:show).permit([:title, :series, :description, :image, :programmeID])
  end

end