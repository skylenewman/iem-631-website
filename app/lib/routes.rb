require 'httparty'
require 'pp'

Pakyow::App.routes do
  default do
    logger.info 'hello'
  end
  get '/workflow_status_type' do
    print 'ABCDEFGHIJKLMNOPQRSTUVWZYZ'
    response = HTTParty.get(ENV['FILE_STORE']+'/ij/a.status_type/WorkflowZ:EXECUTING.json')
    json = JSON.parse(response.body)
    pp json
    view.scope(:json).apply(json)
  end
  # define application routes here
end
