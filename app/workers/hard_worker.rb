class HardWorker
  include Sidekiq::Worker

  def perform(*_args)
    p "Hello World!"
  end
end
