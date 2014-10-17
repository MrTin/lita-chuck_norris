require 'spec_helper'

describe Lita::Handlers::ChuckNorris, lita_handler: true do
  it { routes_command('chuck').to(:chuck) }
end
