VAGRANTFILE_API_VERSION = "2"
Vagrant.require_version ">= 1.6.0"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  ENV['VAGRANT_DEFAULT_PROVIDER'] = 'docker'
  config.vm.define "oracle" do |restapp|
	  restapp.vm.provider "docker" do |d|
	    d.image = "oracle"
	    d.ports = ["1521:1521"]
	    d.name = "database"
	  end
  end
  
  config.vm.define "restapp" do |restapp|
	  restapp.vm.provider "docker" do |d|
	    d.image = "feedrestapp"

	    d.link("database:database")
	    d.name = "restapp"
	  end
  end

  config.vm.define "mvcapp" do |mvcapp|
	  mvcapp.vm.provider "docker" do |d|
	    d.image = "feedwebapp"
	    d.ports = ["8081:8080"]
	    d.link("restapp:restapp")
	  end
  end
  
end
