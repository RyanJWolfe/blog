# frozen_string_literal: true

module ApplicationHelper
  def inside_posts
    %w[posts].include? controller_name
  end

  def inside_about
    %w[about].include? controller_name
  end

  def inside_contact
    %w[contact].include? controller_name
  end
end
