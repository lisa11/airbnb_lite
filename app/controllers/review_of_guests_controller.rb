class ReviewOfGuestsController < ApplicationController
  def index
    @review_of_guests = ReviewOfGuest.all

    render("review_of_guests/index.html.erb")
  end

  def show
    @review_of_guest = ReviewOfGuest.find(params[:id])

    render("review_of_guests/show.html.erb")
  end

  def new
    @review_of_guest = ReviewOfGuest.new

    render("review_of_guests/new.html.erb")
  end

  def create
    @review_of_guest = ReviewOfGuest.new

    @review_of_guest.rating = params[:rating]
    @review_of_guest.content = params[:content]

    save_status = @review_of_guest.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/review_of_guests/new", "/create_review_of_guest"
        redirect_to("/review_of_guests")
      else
        redirect_back(:fallback_location => "/", :notice => "Review of guest created successfully.")
      end
    else
      render("review_of_guests/new.html.erb")
    end
  end

  def edit
    @review_of_guest = ReviewOfGuest.find(params[:id])

    render("review_of_guests/edit.html.erb")
  end

  def update
    @review_of_guest = ReviewOfGuest.find(params[:id])

    @review_of_guest.rating = params[:rating]
    @review_of_guest.content = params[:content]

    save_status = @review_of_guest.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/review_of_guests/#{@review_of_guest.id}/edit", "/update_review_of_guest"
        redirect_to("/review_of_guests/#{@review_of_guest.id}", :notice => "Review of guest updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Review of guest updated successfully.")
      end
    else
      render("review_of_guests/edit.html.erb")
    end
  end

  def destroy
    @review_of_guest = ReviewOfGuest.find(params[:id])

    @review_of_guest.destroy

    if URI(request.referer).path == "/review_of_guests/#{@review_of_guest.id}"
      redirect_to("/", :notice => "Review of guest deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Review of guest deleted.")
    end
  end
end
