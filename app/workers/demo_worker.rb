class DemoWorker
  include Sidekiq::Worker

  def perform(job_id)
    Rails.logger.info("[DemoWorker] processed job_id=#{job_id}")
  end
end
