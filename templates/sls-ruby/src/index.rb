#!/usr/bin/env ruby

require 'json'
require 'logger'

# Class for SLS handlers.
# 
# @author <%= author %>
class <%= name.tr('-', '_').split('_').collect(&:capitalize).join %>

  ##############################################################################
  # Dependency Injection

  attr_writer :logger

  # Create a logger
  #
  # @return [Logger]
  def logger
    @logger ||= Logger.new(STDOUT)
  end

  ##############################################################################
  # Helpers

  # ...

  ##############################################################################
  # Main method

  # Generate the response as JSON
  #
  # @return [String]
  def generate_response
    response = {}

    # TODO

    response
  rescue StandardError => e
    {
      type: e.class.name,
      message: e.message.to_json,
      backtrace: e.backtrace.to_json
    }
  end
end

################################################################################
# Handlers / Adapters (inbound requests)

# API Gateway Lambda Proxy
#
# @param _event [Hash] Event from API Gateway
# @param _context [Hash] Context from API Gateway
# @return [String] JSON response with statusCode, heders and body
def process(_event:, _context:)
  # input1 = event['pathParameters'].fetch('input1', 'default')

  handler = <%= name.tr('-', '_').split('_').collect(&:capitalize).join %>.new

  {
    statusCode: content.key?(:backtrace) ? 500 : 200,
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.generate(handler.generate_response)
  }
end

# Interactive mode
if __FILE__ == $PROGRAM_NAME
  require 'pry'

  binding.pry
  puts
end
