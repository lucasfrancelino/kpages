require "time"

task :specs, [:tags] do |task, args|
    time = Time.now.utc.iso8601.tr(":", "")
    report = "--format html --out=logs/report_#{time}.html"
    sh "cucumber #{args[:tags]} #{report}"
end