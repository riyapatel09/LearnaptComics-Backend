#json.comics @comics


@comics =  Comic.all.paginate(:page => params[:page], :per_page => 10)


json.totalentries @comics.count

json.comics @comics do |comic|
json.(comic, :id, :name)
 # @comics.paginate(:page => params[:page], :per_page => 10)
end



