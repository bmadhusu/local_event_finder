
namespace :my_tasks do
  desc "Grabs tweets from tweeters and updates table with events"
  task populate_tweets: :environment do

    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "1XpxyA4OgcHi6id4rsxUWQ"
      config.consumer_secret     = "0Iufiy4vCfVVG4s684Km6DOLwgacwxsHBkBRqUJYs"
      config.access_token        = "182800857-7MWyRacOnzpIerrNjZ1zbHDlzMm9fnY1WuvEmZBM"
      config.access_token_secret = "L9GReADhrDq2iuNOkma7KWcRfqBoqy134FJeBhDCyUnYS"
    end

    # select twitter ids from table and grab their tweets since the last time

    twitter_handles = Tweeter.all

    twitter_handles.each do |t| 
      puts t.twitter_handle

      tweets = client.user_timeline(t.twitter_handle, count: 500)
      # only look at tweets that came out since last_checked
      

      last_checked = t.last_checked
      puts "last checked was ", last_checked

      tweets.each { |tweet| 
        if tweet.created_at > last_checked
          puts tweet.full_text
          # for new tweets, parse and see if it's a future event; if so
          # insert into event table; also need to figure out where the event is located i.e., congressional district, state, city areas and populate

             
        end
      
      }

      t.last_checked = DateTime.current()

      puts "\n\n******************\n\n"
     # t.save
    end

  end

end
