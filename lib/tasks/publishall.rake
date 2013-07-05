namespace :posts do 
  
  desc "Change all posts to published"
  task :publishall => :environment do
    Post.all.each do |p|
      p.published = 1
      p.save
    end
  end
  
  desc "scheduled publishing"
  task :schedpub => :environment do
    Post.to_publish.each do |p|
      Post.publish(p)
    end
  end
  
  end
  
  
  