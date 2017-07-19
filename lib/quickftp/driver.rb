module Quickftp
  class Driver
    def initialize(**options)
      @dir = options[:dir]
      @user = options[:user]
      @password = options[:password]
    end

    def authenticate(user, password)
      if @user && @password
        @user == user && @password == password
      else
        true
      end
    end

    def file_system(user)
      Ftpd::DiskFileSystem.new(@dir)
    end
  end
end
