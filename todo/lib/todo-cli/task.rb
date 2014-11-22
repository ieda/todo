module Todo
  class Task
    include Mongoid::Document
    field :message
    field :order

    def add(message)
      Task.create(message: message, order: 1)
    end
  end
end
