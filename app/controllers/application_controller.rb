class ApplicationController < ActionController::Base
    def teapot
        render plain: "I'm a teapot", status: 418
    end
end
