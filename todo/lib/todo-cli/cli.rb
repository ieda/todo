module Todo
  class Cli
    def add(message)
      return !!Task.create(message)
    end

    def list
      Task.all
    end
  end
end
