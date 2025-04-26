require "application_system_test_case"

class TaskItemsTest < ApplicationSystemTestCase
  setup do
    @task_item = task_items(:one)
  end

  test "visiting the index" do
    visit task_items_url
    assert_selector "h1", text: "Task items"
  end

  test "should create task item" do
    visit task_items_url
    click_on "New task item"

    fill_in "Description", with: @task_item.description
    check "Done" if @task_item.done
    fill_in "Task list", with: @task_item.task_list_id
    click_on "Create Task item"

    assert_text "Task item was successfully created"
    click_on "Back"
  end

  test "should update Task item" do
    visit task_item_url(@task_item)
    click_on "Edit this task item", match: :first

    fill_in "Description", with: @task_item.description
    check "Done" if @task_item.done
    fill_in "Task list", with: @task_item.task_list_id
    click_on "Update Task item"

    assert_text "Task item was successfully updated"
    click_on "Back"
  end

  test "should destroy Task item" do
    visit task_item_url(@task_item)
    click_on "Destroy this task item", match: :first

    assert_text "Task item was successfully destroyed"
  end
end
