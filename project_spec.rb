
require_relative 'project'
RSpec.describe Project do
  before(:each) do
    @project1 = Project.new('Project 1', 'description 1')
    @project2 = Project.new('Project 2', 'description 2')

  end

  it 'has a getter and setter for name attribute' do
    @project1.name = "Changed Name" 
    expect(@project1.name).to eq("Changed Name") 
  end 

  it 'has a getter and setter for owner attribute' do
    @project1.tasks= "Changed owner" 
    expect(@project1.tasks).to eq("Changed owner") 
  end 

  it 'has a method add_tasks' do
    expect(@project2.add_tasks('my first tasks yeepiiii!!!!')).to eq(['my first tasks yeepiiii!!!!'])
  end 
  
  it 'has a method tasks that returns tasks attribute' do
    @project2.add_tasks('set another task')
    expect(@project2.tasks).to eq(['set another task'])
  end  

  it 'has a method elevator_pitch to explain name and description' do
    expect(@project1.elevator_pitch).to eq("Project 1, description 1")
    expect(@project2.elevator_pitch).to eq("Project 2, description 2")
  end

  it 'has a method print_tasks that will print each task in your project' do
    @project2.add_tasks('add another app')
    @project2.add_tasks('Add a final app')
    expect(@project2.print_tasks).to eq(['add another app', 'Add a final app'])
  end

  

end
