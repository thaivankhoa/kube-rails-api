module Api
  module V1
    class HealthChecksController < ApplicationController
      def show
        render json: {
          status: "ok",
          service: "rails-api",
          timestamp: Time.current.iso8601
        }
      end
    end
  end
end
