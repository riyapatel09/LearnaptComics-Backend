json.totalentries @comics.count
json.comics @comics do |comic|
  json.(comic, :id, :name)
  json.image_url comic.temp_image_url

end
 