module Todo
  class Cli
    def add(message)
      !!Task.create(message)
    end

    def list
      Task.all
    end
  end
end
