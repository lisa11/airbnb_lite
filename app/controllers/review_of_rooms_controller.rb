class ReviewOfRoomsController < ApplicationController
  def index
    @review_of_rooms = ReviewOfRoom.all

    render("review_of_rooms/index.html.erb")
  end

  def show
    @review_of_room = ReviewOfRoom.find(params[:id])

    render("review_of_rooms/show.html.erb")
  end

  def new
    @review_of_room = ReviewOfRoom.new

    render("review_of_rooms/new.html.erb")
  end

  def create
    @review_of_room = ReviewOfRoom.new

    @review_of_room.accuracy = params[:accuracy]
    @review_of_room.communication = params[:communication]
    @review_of_room.cleanliness = params[:cleanliness]
    @review_of_room.location = params[:location]
    @review_of_room.check_in = params[:check_in]
    @review_of_room.value = params[:value]
    @review_of_room.content = params[:content]
    @review_of_room.guests_id = params[:guests_id]

    save_status = @review_of_room.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/review_of_rooms/new", "/create_review_of_room"
        redirect_to("/review_of_rooms")
      else
        redirect_back(:fallback_location => "/", :notice => "Review of room created successfully.")
      end
    else
      render("review_of_rooms/new.html.erb")
    end
  end

  def edit
    @review_of_room = ReviewOfRoom.find(params[:id])

    render("review_of_rooms/edit.html.erb")
  end

  def update
    @review_of_room = ReviewOfRoom.find(params[:id])

    @review_of_room.accuracy = params[:accuracy]
    @review_of_room.communication = params[:communication]
    @review_of_room.cleanliness = params[:cleanliness]
    @review_of_room.location = params[:location]
    @review_of_room.check_in = params[:check_in]
    @review_of_room.value = params[:value]
    @review_of_room.content = params[:content]
    @review_of_room.guests_id = params[:guests_id]

    save_status = @review_of_room.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/review_of_rooms/#{@review_of_room.id}/edit", "/update_review_of_room"
        redirect_to("/review_of_rooms/#{@review_of_room.id}", :notice => "Review of room updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Review of room updated successfully.")
      end
    else
      render("review_of_rooms/edit.html.erb")
    end
  end

  def destroy
    @review_of_room = ReviewOfRoom.find(params[:id])

    @review_of_room.destroy

    if URI(request.referer).path == "/review_of_rooms/#{@review_of_room.id}"
      redirect_to("/", :notice => "Review of room deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Review of room deleted.")
    end
  end
end
