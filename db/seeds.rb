# Create a user
user = User.find_or_create_by!(email: 'johndoe@example.com') do |u|
    u.password = 'password'
    u.password_confirmation = 'password'
  end
  
  # Create a profile for the user
  profile = Profile.find_or_create_by!(user: user) do |p|
    p.username = 'johndoe'
    p.short_description = 'A short description'
    p.about = 'About this user'
    p.connections = 42
  end
  
  # Create interests
  interests = ['Ruby on Rails', 'Reading', 'Cycling']
  interests.each do |interest_name|
    profile.interests.find_or_create_by!(name: interest_name)
  end
  
  # Create highlights
  highlights = ['Built an amazing Rails app', 'Spoke at a tech conference']
  highlights.each do |highlight_desc|
    profile.highlights.find_or_create_by!(description: highlight_desc)
  end
  
  # Create experiences
  experiences = [
    { role: 'Developer', event: 'RailsConf', period: '2023' },
    { role: 'Team Lead', event: 'Tech Summit', period: '2022' }
  ]
  experiences.each do |experience|
    profile.experiences.find_or_create_by!(experience)
  end
  
  # Create contacts
  contacts = [
    { contact_type: 'LinkedIn', contact_url: 'https://linkedin.com/in/johndoe' },
    { contact_type: 'GitHub', contact_url: 'https://github.com/johndoe' }
  ]
  contacts.each do |contact|
    profile.contacts.find_or_create_by!(contact)
  end
  
  puts "Seeded user, profile, interests, highlights, experiences, and contacts."
  