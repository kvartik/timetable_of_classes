# frozen_string_literal: true

require 'dry/monads/result'
require 'dry/matcher/result_matcher'

module SupportService
  class GeneralService
    include Dry::Monads::Result::Mixin
    attr_accessor :data, :result, :status, :errors  # :event, :course

    def initialize(data)
      self.data = data
      self.errors = []
    end

    def valid?
      errors.empty?
    end
  end
end
