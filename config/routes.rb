Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "listings#index"
  # Routes for the Review_of_room resource:
  # CREATE
  get "/review_of_rooms/new", :controller => "review_of_rooms", :action => "new"
  post "/create_review_of_room", :controller => "review_of_rooms", :action => "create"

  # READ
  get "/review_of_rooms", :controller => "review_of_rooms", :action => "index"
  get "/review_of_rooms/:id", :controller => "review_of_rooms", :action => "show"

  # UPDATE
  get "/review_of_rooms/:id/edit", :controller => "review_of_rooms", :action => "edit"
  post "/update_review_of_room/:id", :controller => "review_of_rooms", :action => "update"

  # DELETE
  get "/delete_review_of_room/:id", :controller => "review_of_rooms", :action => "destroy"
  #------------------------------

  # Routes for the Review_of_guest resource:
  # CREATE
  get "/review_of_guests/new", :controller => "review_of_guests", :action => "new"
  post "/create_review_of_guest", :controller => "review_of_guests", :action => "create"

  # READ
  get "/review_of_guests", :controller => "review_of_guests", :action => "index"
  get "/review_of_guests/:id", :controller => "review_of_guests", :action => "show"

  # UPDATE
  get "/review_of_guests/:id/edit", :controller => "review_of_guests", :action => "edit"
  post "/update_review_of_guest/:id", :controller => "review_of_guests", :action => "update"

  # DELETE
  get "/delete_review_of_guest/:id", :controller => "review_of_guests", :action => "destroy"
  #------------------------------

  # Routes for the Bookmark resource:
  # CREATE
  get "/bookmarks/new", :controller => "bookmarks", :action => "new"
  post "/create_bookmark", :controller => "bookmarks", :action => "create"

  # READ
  get "/bookmarks", :controller => "bookmarks", :action => "index"
  get "/bookmarks/:id", :controller => "bookmarks", :action => "show"

  # UPDATE
  get "/bookmarks/:id/edit", :controller => "bookmarks", :action => "edit"
  post "/update_bookmark/:id", :controller => "bookmarks", :action => "update"

  # DELETE
  get "/delete_bookmark/:id", :controller => "bookmarks", :action => "destroy"
  #------------------------------

  devise_for :hosts
  # Routes for the Host resource:
  # READ
  get "/hosts", :controller => "hosts", :action => "index"
  get "/hosts/:id", :controller => "hosts", :action => "show"


  devise_for :guests
  # Routes for the Guest resource:
  # READ
  get "/guests", :controller => "guests", :action => "index"
  get "/guests/:id", :controller => "guests", :action => "show"


  # Routes for the Booking resource:
  # CREATE
  get "/bookings/new", :controller => "bookings", :action => "new"
  post "/create_booking", :controller => "bookings", :action => "create"

  # READ
  get "/bookings", :controller => "bookings", :action => "index"
  get "/bookings/:id", :controller => "bookings", :action => "show"

  # UPDATE
  get "/bookings/:id/edit", :controller => "bookings", :action => "edit"
  post "/update_booking/:id", :controller => "bookings", :action => "update"

  # DELETE
  get "/delete_booking/:id", :controller => "bookings", :action => "destroy"
  #------------------------------

  # Routes for the Request resource:
  # CREATE
  get "/requests/new", :controller => "requests", :action => "new"
  post "/create_request", :controller => "requests", :action => "create"

  # READ
  get "/requests", :controller => "requests", :action => "index"
  get "/requests/:id", :controller => "requests", :action => "show"

  # UPDATE
  get "/requests/:id/edit", :controller => "requests", :action => "edit"
  post "/update_request/:id", :controller => "requests", :action => "update"

  # DELETE
  get "/delete_request/:id", :controller => "requests", :action => "destroy"
  #------------------------------

  # Routes for the Message resource:
  # CREATE
  get "/messages/new", :controller => "messages", :action => "new"
  post "/create_message", :controller => "messages", :action => "create"

  # READ
  get "/messages", :controller => "messages", :action => "index"
  get "/messages/:id", :controller => "messages", :action => "show"

  # UPDATE
  get "/messages/:id/edit", :controller => "messages", :action => "edit"
  post "/update_message/:id", :controller => "messages", :action => "update"

  # DELETE
  get "/delete_message/:id", :controller => "messages", :action => "destroy"
  #------------------------------

  # Routes for the Availability resource:
  # CREATE
  get "/availabilities/new", :controller => "availabilities", :action => "new"
  post "/create_availability", :controller => "availabilities", :action => "create"

  # READ
  get "/availabilities", :controller => "availabilities", :action => "index"
  get "/availabilities/:id", :controller => "availabilities", :action => "show"

  # UPDATE
  get "/availabilities/:id/edit", :controller => "availabilities", :action => "edit"
  post "/update_availability/:id", :controller => "availabilities", :action => "update"

  # DELETE
  get "/delete_availability/:id", :controller => "availabilities", :action => "destroy"
  #------------------------------

  # Routes for the Photo resource:
  # CREATE
  get "/photos/new", :controller => "photos", :action => "new"
  post "/create_photo", :controller => "photos", :action => "create"

  # READ
  get "/photos", :controller => "photos", :action => "index"
  get "/photos/:id", :controller => "photos", :action => "show"

  # UPDATE
  get "/photos/:id/edit", :controller => "photos", :action => "edit"
  post "/update_photo/:id", :controller => "photos", :action => "update"

  # DELETE
  get "/delete_photo/:id", :controller => "photos", :action => "destroy"
  #------------------------------

  # Routes for the Listing resource:
  # CREATE
  get "/listings/new", :controller => "listings", :action => "new"
  post "/create_listing", :controller => "listings", :action => "create"

  # READ
  get "/listings", :controller => "listings", :action => "index"
  get "/listings/:id", :controller => "listings", :action => "show"

  # UPDATE
  get "/listings/:id/edit", :controller => "listings", :action => "edit"
  post "/update_listing/:id", :controller => "listings", :action => "update"

  # DELETE
  get "/delete_listing/:id", :controller => "listings", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
