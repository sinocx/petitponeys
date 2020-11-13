json.extract! cour, :id, :title, :description
json.start cour.start_time
json.end cour.end_time
json.url cour_url(cour)
