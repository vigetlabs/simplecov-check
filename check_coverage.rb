require 'json'

minimum_coverage = ENV['INPUT_MINIMUM_COVERAGE'].to_i
last_run = JSON.parse File.read(ENV['INPUT_COVERAGE_PATH'])

actual_coverage = last_run.dig("result", "line")

if actual_coverage >= minimum_coverage
  STDOUT.puts("Line coverage (#{actual_coverage}%) meets the expected minimum: #{minimum_coverage}%.")
  exit(0)
else
  STDERR.puts("Line coverage (#{actual_coverage}%) is below the expected minimum: #{minimum_coverage}%.")
  exit(1)
end
