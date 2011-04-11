require File.expand_path('../seed_data', __FILE__)

jv = Jobvert.create(:position => "Software Engineer", :company => "se_template", :company => "ManyMoon", :found_on => "April, 2010", :website => "Github Jobs")

CoverLetter.create(:jobvert => jv, :body => COVER_LETTER)

rec = Recommendation.create(:jobvert => jv)

Praise.create(:recommendation => rec, :comment => "What made a difference to our organisation was the time and care David spent in 'listening and hearing' and then cleverly interpreting our needs into an effective and highly user friendly system. For the first time we have been able to access reliable data about the work we do and it has made a real impact on our ability to analyse and plan for our future client service delivery. David had a genuine interest in us and our work and this made for a very positive working relationship that has given us excellent results. I will be using David's services again without doubt.", :reference_name => "M. Eagles", :reference_title => "Director of Children & Youth Services", :employer => "CatholicCare", :year => "2011", :display_index => 0)

Praise.create(:recommendation => rec, :comment => "David demonstrated outstanding listening skills and attention to detail which led him to truly understanding our needs and requirements. He was able to assist us through his extensive technical knowledge and brilliant creativity.", :reference_name => "V. Lee", :reference_title => "Personal Trainer", :employer => "DK Fitness Studio", :year => "2010", :display_index => 1)

Praise.create(:recommendation => rec, :comment => "His technical background and knowledge were invaluable for our particularly technical savvy clients. His attitude and enthusiasm for the work he was involved with was always impressive and professional and his commitment to not only delivering the projects to our clients' needs but also ensuring that the best solution was put forward was nothing short of excellent. Another of David's best qualities was that he not only developed a good relationship with the client and internal teams alike, but he also had a very good understanding of the roles and technologies that each of the other team members worked with, making the management and delivery experience one of ease. Should David ever become available again in Australia I would have no hesitation at all in re-hiring him and likewise overseas I would have no second thoughts about recommending him for any role in which he decided to pursue.", :reference_name => "J. Jones", :reference_title => "Digital Operations Manager", :employer => "EuroRSCG", :year => "2009", :display_index => 2)

Praise.create(:recommendation => rec, :comment => "I always enjoyed working with David and found that he quickly grasped the problems at hand and comfortably created great solutions, all while working within the frameworks already in place.", :reference_name => "W. Ooms", :reference_title => "Technical Director", :employer => "BuyALL", :year => "2008", :display_index => 3)

Praise.create(:recommendation => rec, :comment => "I have found him to be an enthusiastic hard worker who is continuously engaged in learning and sharing expertise. His skills in software engineering are impressive. It indeed was a surprise for me to learn that he is still pursuing his undergraduate qualifications.", :reference_name => "Dr. S. Challa", :reference_title => "Professor of Computing Systems Engineering.", :employer => "University of Technology, Sydney", :year => "2006", :display_index => 4)

Praise.create(:recommendation => rec, :comment => "A personable, bright, and confident person, David was a valuable colleague. His technical ability and approachable attitude made him the person to go to for advice. Whether discussing a support issue or planning new development, his opinion was always valued. David always demonstrated a sense of responsibility and work ethic, consistently delivering timely results. He was an example to all who worked with him.", :reference_name => "F. Pulvirenti", :reference_title => "Senior Developer.", :employer => "D&eacute;tente Systems", :year => "2004", :display_index => 5)

we = WorkExperience.create(:jobvert => jv)

CAREERS.each do |c|
  career = Career.create!(:work_experience => we, :position => c[0], :employer =>c[1], :duration => c[2], :description => c[3])
  if c[4].any?
    c[4].each_with_index do |a, i|
      Accomplishment.create(:career => career, :description => a, :display_index => i)
    end
  end
end