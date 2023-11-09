class User < ApplicationRecord
    belongs_to :membership, optional: true
end
