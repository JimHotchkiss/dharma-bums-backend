class MeditationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :created_at, :theme, :duration, :organizer, :comments


end
