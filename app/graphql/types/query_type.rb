module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    description "The query root of this schema"

    # First describe the field signature:
    field :post, Post, "Find a post by ID" do
      argument :id, ID
    end

    # Then provide an implementation:
    def post(id:)
      ::Post.find(id)
    end
  end
end
