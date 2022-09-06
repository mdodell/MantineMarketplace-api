# frozen_string_literal: true

class Account < ApplicationRecord
  include Rodauth::Rails.model
  enum :status, unverified: 1, verified: 2, closed: 3

  def as_json(options = {})
    # Override as_json and don't return password hash
    super({ except: [:password_hash] }.merge(options))
  end
end
