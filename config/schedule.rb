set :environment, "development"
set :output, {:error => "log/cron_error_log.log", :standard => "log/cron_log.log"} #just for testing
#rake task to scrape fashion sites
<<<<<<< HEAD
every 1.day do
=======
every 5.hours do
>>>>>>> 2ec52f74abeb58aac5e94df469f4c5875df9379a
  rake "scraper:perform_scrape" #namespace:rake_task
end
