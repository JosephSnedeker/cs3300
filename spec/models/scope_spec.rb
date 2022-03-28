require "rails_helper"

RSpec.describe Project, type: :model do
  # ...

  context "scopes tests" do
    let(:params) { { title: "Title", description: "some description" } }
    before(:each) do
      Project.create(params)
      Project.create(params)
      Project.create(params)
      Project.create(params)
      Project.create(params)
      Project.create(params)
      Project.create(params)
      Project.create(params)
      Project.create(params)
      Project.create(params)
      #note kanban board for requirement of at least 10 functionioning projects

    end

    it "should return all projects" do
      expect(Project.count).to eq(10)
    end

  end
end