module AccountsHelper
  def google_map(center)
    "https://maps.googleapis.com/maps/api/staticmap?center=#{center}&size=400x400&zoom=14&markers=#{center}&key=#{ENV['MAPS_API_KEY']}"
  end
end
