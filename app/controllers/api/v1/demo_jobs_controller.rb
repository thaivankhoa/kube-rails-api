module Api
  module V1
    class DemoJobsController < ApplicationController
      def create
        DemoWorker.perform_async("presentation-demo-#{SecureRandom.hex(4)}")
        render json: { enqueued: true, message: "Job sent to Sidekiq" }, status: :accepted
      end
    end
  end
end
