module SessionsHelper
  def activity_collection
    Activity.pluck :name, :id
  end
end
