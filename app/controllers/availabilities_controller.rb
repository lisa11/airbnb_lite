class AvailabilitiesController < ApplicationController
  def index
    @availabilities = Availability.all

    render("availabilities/index.html.erb")
  end

  def show
    @availability = Availability.find(params[:id])

    render("availabilities/show.html.erb")
  end

  def new
    @availability = Availability.new

    render("availabilities/new.html.erb")
  end

  def create
    @availability = Availability.new

    @availability.listings_id = params[:listings_id]
    @availability.price = params[:price]
    @availability.night = params[:night]
    @availability.available = params[:available]

    save_status = @availability.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/availabilities/new", "/create_availability"
        redirect_to("/availabilities")
      else
        redirect_back(:fallback_location => "/", :notice => "Availability created successfully.")
      end
    else
      render("availabilities/new.html.erb")
    end
  end

  def edit
    @availability = Availability.find(params[:id])

    render("availabilities/edit.html.erb")
  end

  def update
    @availability = Availability.find(params[:id])

    @availability.listings_id = params[:listings_id]
    @availability.price = params[:price]
    @availability.night = params[:night]
    @availability.available = params[:available]

    save_status = @availability.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/availabilities/#{@availability.id}/edit", "/update_availability"
        redirect_to("/availabilities/#{@availability.id}", :notice => "Availability updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Availability updated successfully.")
      end
    else
      render("availabilities/edit.html.erb")
    end
  end

  def destroy
    @availability = Availability.find(params[:id])

    @availability.destroy

    if URI(request.referer).path == "/availabilities/#{@availability.id}"
      redirect_to("/", :notice => "Availability deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Availability deleted.")
    end
  end
end
