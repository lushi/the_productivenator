require 'spec_helper'

describe "Task pages" do

  subject { page }

  

  describe "create page" do
    before { visit create_path }

    it { should have_selector('h1',    text: 'Create Your To-Do List') }
    it { should have_selector('title', text: full_title('Create')) }
  end

  describe "create" do

    before { visit create_path }

    let(:submit) { "Create a to-do list" }

    describe "with invalid information" do
      it "should not create a to-do list" do
        expect { click_button submit }.not_to change(Task, :count)
      end
    end

    describe "with valid information" do
      before do 
        fill_in "Task",                             with: "Example Task"
        fill_in "Time to Complete (min)",           with: "1"
        fill_in "Fun Reward",                       with: "Example Reward"
        fill_in "Time Allotted (min)",              with: "2"
      end

      it "should create a task" do
        expect { click_button submit }.to change(Task, :count).by(1)
      end
    end
  end
end