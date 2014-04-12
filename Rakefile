require 'puppet-catalog-test'
require 'puppetlabs_spec_helper/rake_tasks'

def roles_list
   roles = []
   Dir.glob("modules/role/manifests/*.pp") do |role|
      roles << File.basename(role, File.extname(role))
   end
   roles
end


task :spec => "catalog:all"

namespace :catalog do
    PuppetCatalogTest::RakeTask.new(:all) do |t|
      t.module_paths = ["modules"]
      t.manifest_path = File.join("manifests", "site.pp")
      t.config_dir = File.join(".")
      t.scenario_yaml = "scenarios.yml"
      t.include_pattern = ENV["include"]
      t.exclude_pattern = ENV["exclude"]
    end
end
