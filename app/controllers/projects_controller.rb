class ProjectsController < ApplicationController
  def index
    select_columns = [:id, 'count AS stats_endpoint_comments_count', :count, :name]

    @project = Project.select(select_columns).last
    render text: @project.stats_endpoint_comments_count

  end
end
