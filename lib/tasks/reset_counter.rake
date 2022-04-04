namespace :db do
    desc "Reset Counter Cache!"
    task :reset_counter => :environment do
        puts " GO!"
        Candidate.all.each do |candidate|
        Candidate.reset_counters(candidate.id, :vote_logs)
        puts "Done!"
        end
    end

end