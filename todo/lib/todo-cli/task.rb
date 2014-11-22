module Todo
  class Task
    include Mongoid::Document
    field :message
    field :order

    def add(message)
      Task.create(message: message, order: Task.all.empty? ? 1 : Task.max(:order) + 1)
    end
  end
end
