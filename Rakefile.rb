task :default => :test

desc "Pruebas"
task :test do
  sh "ruby tc_radio.rb"
end

desc "clean the temporal files"
task :clean do
  sh "rm -fr *.gz *~ *swp"
end
