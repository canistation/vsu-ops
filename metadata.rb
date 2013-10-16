name             'vsubox'
maintainer       'wolflee'
maintainer_email 'liyuan0228@gmail.com'
license          'MIT License'
description      'auto deploy template for rails along with rbenv+nginx+unicorn+mongodb+redis'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe   "railsbox", "Includes all recipes."
recipe   "railsbox::ruby", "setup a ruby version manager `rbenv`."
recipe   "railsbox::nginx", "setup `nginx` as front-end server."
recipe   "railsbox::unicorn", "setup `unicorn` apps, if any."
recipe   "railsbox::mongodb", "setup `mongodb` as persistence."
recipe   "railsbox::redis", "setup `redis` as cache-like persistence."
recipe   "railsbox::nodejs", "Install Nodejs based on the default installation method"
#recipe   "railsbox::postgresql", "Install PostgreSQL and create PostgreSQL databases."
#recipe   "railsbox::github-deploys", "install github-deploys"

supports "ubuntu"
supports "debian"

depends "appbox"   # apt\sudo\user\curl\htop\git\tmux
depends 'rbenv'
depends 'nginx'
depends 'unicorn', ">= 1.2.2"
depends 'runit', '>= 1.1.2'
depends 'mongodb'
depends 'redis'
depends "database"
depends "nodejs"


