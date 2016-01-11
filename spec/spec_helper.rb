require 'common_spec_helper'
require 'webmock/rspec'
WebMock.disable_net_connect!(allow_localhost: true)

module Helpers
  def success_double(body = { id: 123 })
    double(code: "200", is_success?: true, body: body.to_json)
  end

  def allow_get_and_return(http_response = success_double)
    allow_any_instance_of(Net::HTTP)
      .to receive(:get)
      .and_return(http_response)
  end

  def expect_get_and_return(http_response = success_double)
    expect_any_instance_of(Net::HTTP)
      .to receive(:get)
      .and_return(http_response)
  end

  def allow_successful_create(resource_properties = { id: 123 })
    allow_any_instance_of(Net::HTTP)
      .to receive(:post)
      .and_return(
        double(
          code: "201",
          is_success?: true,
          body: resource_properties.to_json
        )
      )
  end
  def expect_successful_create(resource_properties = { id: 123 })
    expect_any_instance_of(Net::HTTP)
      .to receive(:post)
      .and_return(
        double(
          code: "201",
          is_success?: true,
          body: resource_properties.to_json
        )
      )
  end

  def expect_patch_to_uri(uri)
    expect_any_instance_of(Net::HTTP)
      .to receive(:patch)
      .with(URI(uri), anything, anything)
      .and_return(
        double(
          code: "200",
          is_success?: true,
          body: {}.to_json
        )
      )
  end

  def expect_post_to_uri(uri, data = {}, body = {})
    expect_any_instance_of(Net::HTTP)
      .to receive(:post)
      .with(URI(uri), data.to_json, anything)
      .and_return(
        double(
          code: "200",
          is_success?: true,
          body: body.to_json
        )
      )
  end
end

RSpec.configure do |c|
  c.include Helpers
end
