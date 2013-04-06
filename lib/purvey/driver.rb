module Purvey
  class Driver
    def initialize(dir)
      @dir = dir
    end

    def authenticate(user, password)
      true
    end

    def file_system(user)
      Ftpd::DiskFileSystem.new(@dir)
    end
  end
end
