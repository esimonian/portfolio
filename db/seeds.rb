10.times do |blog|
  Blog.create!(
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph(2) 
  )
end

5.times do |skill|
  Skill.create!(
    title: Faker::Job.key_skill,
    percent_utilized: 15
  )
end

9.times do |portfolio_item|
  PortfolioItem.create!(
    title: Faker::Lorem.sentence,
    subtitle: Faker::Lorem.sentence,
    body:  Faker::Lorem.paragraph(2),
    main_image: Faker::Placeholdit.image("50x50") ,
    thumb_image: Faker::Placeholdit.image("200x200") 
  )
end
