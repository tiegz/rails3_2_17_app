class ProjectsController < ApplicationController
  def index
    ProjectSession.create
    select_columns = [:id, 'count AS stats_endpoint_comments_count', :count, :name]
    1000.times { "a" * (1024 ** 2) }

    @project = Project.select(select_columns).last
    render text: @project.stats_endpoint_comments_count

  end
end
