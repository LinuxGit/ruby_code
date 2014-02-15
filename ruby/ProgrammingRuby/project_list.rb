class ProjectList
  def initialize()
    @projects = []
  end

  def projects=(list)
    @projects = list.map(&:upcase)
  end

  def [](offset)
    @projects[offset]
  end
end

pl = ProjectList.new
pl.projects = %w[ ruby linux centos readhat ubuntu ]
puts pl[3]
