Exifixer.app: Exifixer.platypus Gemfile.lock exifixer.rb
	platypus -y Exifixer.platypus

Gemfile.lock: Gemfile
	bundle install --deployment
	touch Gemfile.lock
