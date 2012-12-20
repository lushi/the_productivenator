require 'spec_helper'

describe "Task pages" do

  subject { page }

  describe "create page" do
    before { visit create_path }

    it { should have_selector('h1',    text: 'Create Your To-Do List') }
    it { should have_selector('title', text: full_title('Create')) }
  end
end