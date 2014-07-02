# A sample Guardfile
# More info at https://github.com/guard/guard#readme

# guard 'spin', cli: "--preload spec/dummy/config/application.rb" do
guard :rspec do

  watch('spec/spec_helper.rb')                                  { "spec" }
  watch(%r{^spec/support/(.+)\.rb$})                            { "spec" }
  watch('spec/dummy/config/routes.rb')                          { "spec/routing" }
  watch('spec/dummy/app/controllers/application_controller.rb') { "spec/controllers" }

  watch(%r{^spec/.+_spec\.rb$})

  watch(%r{^lib/(.+)\.rb$})                   { |m| "spec/lib/#{m[1]}_spec.rb" }
  # watch(%r{^lib/generic_reporting/(.+)\.rb$}) { |m| "spec/lib/generic_reporting/#{m[1]}_spec.rb" }
  # watch(%r{^lib/bloob/(.+)\.rb$}) { |m| "spec/lib/bloob/#{m[1]}_spec.rb" }

  # Rails example
  watch(%r{^spec/dummy/app/(.+)\.rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^spec/dummy/app/(.*)(\.erb|\.haml|\.slim)$})          { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
  watch(%r{^spec/dummy/app/controllers/(.+)_(controller)\.rb$})  do |m|
    ["spec/routing/#{m[1]}_routing_spec.rb",
     "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb",
     "spec/acceptance/#{m[1]}_spec.rb"]
  end

  # Capybara features specs
  watch(%r{^spec/dummy/app/views/(.+)/.*\.(erb|haml|slim)$})     { |m| "spec/features/#{m[1]}_spec.rb" }
end
