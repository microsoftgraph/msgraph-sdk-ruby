require 'rexml/document'

desc "Update Graph API description file (optionally specify VERSION environment variable - defaults to \"v1.0\")"
task :update_metadata do
  version = ENV['VERSION'] || "v1.0"
  file_name = File.absolute_path File.join(__FILE__, "../../data/metadata_#{version}.xml")
  uri = URI("https://graph.microsoft.com/#{version}/$metadata?detailed=true")
  xml = Net::HTTP
    .new(uri.hostname, uri.port)
    .tap { |h| h.use_ssl = uri.scheme == "https" }
    .get(uri).body
  doc = REXML::Document.new(xml)
  File.open(file_name, 'w') do |f|
    puts "writing to #{file_name}"
    doc.write f, 2
  end
end
