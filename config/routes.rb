Rails.application.routes.draw do
  get 'edit_current_trip/index'
  get 'report_a_problem/index'
  get 'help/index'
  get 'settings/index'
  get 'past_trips/index'
  get 'add_more_time/index'
  get 'active_trip/index'
  get 'trip_planning/index'
  get 'payment_information/index'
  get 'accoutn/index'
  get 'login_sign_up/index'
  get 'membership_plans/index'
  get 'how_it_works/index'
  get 'about/index'
  get 'home_page/index'
  root to: "stations#index"
end