require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post :create, event: { description: @event.description, loc1: @event.loc1, loc2: @event.loc2, loc3: @event.loc3, loc4: @event.loc4, time1: @event.time1, time2: @event.time2, time3: @event.time3, time4: @event.time4, title: @event.title }
    end

    assert_redirected_to event_path(assigns(:event))
  end

  test "should show event" do
    get :show, id: @event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event
    assert_response :success
  end

  test "should update event" do
    put :update, id: @event, event: { description: @event.description, loc1: @event.loc1, loc2: @event.loc2, loc3: @event.loc3, loc4: @event.loc4, time1: @event.time1, time2: @event.time2, time3: @event.time3, time4: @event.time4, title: @event.title }
    assert_redirected_to event_path(assigns(:event))
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete :destroy, id: @event
    end

    assert_redirected_to events_path
  end
end
