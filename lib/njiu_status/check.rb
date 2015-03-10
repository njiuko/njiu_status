module NjiuStatus
  class Check
    def self.all
      @checks ||= {}
    end

    def self.add(name:, handler:, options: {})
      all["/#{name}"] = handler
    end
  end
end
