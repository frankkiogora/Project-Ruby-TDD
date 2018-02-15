class Project
  
    attr_accessor :name, :description, :owner, :tasks
    def initialize name, description
        @name = name
        @description = description
        @owner =owner
        @tasks =[]
    end
    def tasks

        @tasks
    end

    def add_tasks=newTask
        @tasks << newTask
    end
   
    def elevator_pitch
      "#{@name}, #{@description}"
    end

  def print_tasks
      @tasks.each do |task|
      puts task
    end  
  end

  end

project_one = Project.new("project_one", "Ruby testing", "Franklin")

project_one.add_tasks('build a sick ruby app')
project_one.tasks

project_one.add_tasks('add another app')
project_one.add_tasks('Add a final app')

project_one.print_tasks