# frozen_string_literal: true

module Types
  class Post < Types::BaseObject
    description "A blog post"
    field :id, ID, null: false
    field :title, String, null: false
    # fields should be queried in camel-case (this will be `truncatedPreview`)
    field :truncated_preview, String, null: false
  end
end
