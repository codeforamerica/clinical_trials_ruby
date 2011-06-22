require 'clinical_trials/client'
require 'clinical_trials/client/connection'
require 'clinical_trials/client/request'
require 'clinical_trials/client/api'


module ClinicalTrials
  class Client
    include ClinicalTrials::Client::Connection
    include ClinicalTrials::Client::Request
    include ClinicalTrials::Client::Api

  end
end