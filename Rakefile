desc "Run cucumber test with Chrome browser"
task :debug do
  sh 'bundle exec cucumber -t @cms env=cms'
end

desc "Run cucumber test with headless browser"
task :frontend do
  sh 'bundle exec cucumber env=frontend HEADLESS=true'
end

desc "Run cms cucumber test with headless browser"
task :cms do
  sh 'bundle exec cucumber -t @cms env=cms HEADLESS=true'
end

task :t, :tag do |t,args|
  args.with_defaults(:tag => "plan")
  sh "bundle exec cucumber env=frontend -t @#{args[:tag]}"
end

desc "Run cucumber test in CI"
task :ci do
  sh 'bundle exec cucumber env=ci --format pretty --format json -o cucumber.json'
end

task :default => :cms
