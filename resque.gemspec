$LOAD_PATH.unshift 'lib'
require 'resque/version'

Gem::Specification.new do |s|
  s.name              = "resque"
  s.version           = Resque::Version
  s.date              = Time.now.strftime('%Y-%m-%d')
  s.summary           = "Resque is a Redis-backed queueing system."
  s.homepage          = "http://github.com/defunkt/resque"
  s.email             = "chris@ozmm.org"
  s.authors           = [ "Chris Wanstrath" ]

  s.files             = %w( README.markdown Rakefile LICENSE HISTORY.md )
  s.files            += ["lib/resque", "lib/resque/errors.rb", "lib/resque/failure", "lib/resque/failure/airbrake.rb", "lib/resque/failure/base.rb", "lib/resque/failure/hoptoad.rb", "lib/resque/failure/multiple.rb", "lib/resque/failure/redis.rb", "lib/resque/failure/thoughtbot.rb", "lib/resque/failure.rb", "lib/resque/helpers.rb", "lib/resque/job.rb", "lib/resque/plugin.rb", "lib/resque/server", "lib/resque/server/public", "lib/resque/server/public/favicon.ico", "lib/resque/server/public/idle.png", "lib/resque/server/public/jquery-1.3.2.min.js", "lib/resque/server/public/jquery.relatize_date.js", "lib/resque/server/public/poll.png", "lib/resque/server/public/ranger.js", "lib/resque/server/public/reset.css", "lib/resque/server/public/style.css", "lib/resque/server/public/working.png", "lib/resque/server/test_helper.rb", "lib/resque/server/views", "lib/resque/server/views/error.erb", "lib/resque/server/views/failed.erb", "lib/resque/server/views/key_sets.erb", "lib/resque/server/views/key_string.erb", "lib/resque/server/views/layout.erb", "lib/resque/server/views/next_more.erb", "lib/resque/server/views/overview.erb", "lib/resque/server/views/queues.erb", "lib/resque/server/views/stats.erb", "lib/resque/server/views/workers.erb", "lib/resque/server/views/working.erb", "lib/resque/server.rb", "lib/resque/stat.rb", "lib/resque/tasks.rb", "lib/resque/version.rb", "lib/resque/worker.rb", "lib/resque.rb", "lib/tasks", "lib/tasks/redis.rake", "lib/tasks/resque.rake"]
  s.files            += ["bin/resque", "bin/resque-web"] 
  # s.files            += []
  s.files            += ["test/airbrake_test.rb", "test/hoptoad_test.rb", "test/job_hooks_test.rb", "test/job_plugins_test.rb", "test/plugin_test.rb", "test/redis-test-cluster.conf", "test/redis-test.conf", "test/resque-web_test.rb", "test/resque_test.rb", "test/test_helper.rb", "test/worker_test.rb"]
  # s.files            += []
  s.executables       = [ "resque", "resque-web" ]

  s.extra_rdoc_files  = [ "LICENSE", "README.markdown" ]
  s.rdoc_options      = ["--charset=UTF-8"]

  s.add_dependency "redis-namespace", "~> 1.0.2"
  s.add_dependency "vegas",           "~> 0.1.2"
  s.add_dependency "sinatra",         ">= 0.9.2"
  s.add_dependency "multi_json",      "~> 1.0"

  s.description = <<description
    Resque is a Redis-backed Ruby library for creating background jobs,
    placing those jobs on multiple queues, and processing them later.

    Background jobs can be any Ruby class or module that responds to
    perform. Your existing classes can easily be converted to background
    jobs or you can create new classes specifically to do work. Or, you
    can do both.

    Resque is heavily inspired by DelayedJob (which rocks) and is
    comprised of three parts:

    * A Ruby library for creating, querying, and processing jobs
    * A Rake task for starting a worker which processes jobs
    * A Sinatra app for monitoring queues, jobs, and workers.
description
end