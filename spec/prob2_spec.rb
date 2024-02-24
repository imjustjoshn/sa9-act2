require_relative '../prob2.rb'

RSpec.describe TodoList do
    describe "#add" do
        it "adds a todo to the list" do
            todos = TodoList.new
            todo = "wash dishes"
            todos.add(todo)
            expect(todos.todos).to include(todo)
        end
    end

    describe "#remove" do
        it "removes a todo from the list" do
            todos = TodoList.new
            todo = "wash dishes"
            todos.add(todo)
            todos.remove(todo)
            expect(todos.todos).not_to include(todo)
        end
    end
    
    describe "#todos" do
        it "returns all todos" do
            todos = TodoList.new
            todo1 = "wash dishes"
            todo2 = "watch tv"
            todos.add(todo1)
            todos.add(todo2)
            expect(todos.todos).to eq([todo1, todo2])
        end
    end
end
