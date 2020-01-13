desc "Run test suite."

task :test do
  puts "Running all tests in tests dir"
  puts " "
  Dir[File.dirname(File.absolute_path(__FILE__)) + '/**/*_test.rb'].each {|file| require file }
end
