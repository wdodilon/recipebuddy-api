# frozen_string_literal: true

require_relative 'recipe_representer'

# Add Representer to module
module RecipeBuddy
  # Represents essential Page information for API output
  class PageRepresenter < Roar::Decorator
    include Roar::JSON
    property :origin_id
    property :name
    collection :recipes, extend: ReciepeRepresenter
  end
end