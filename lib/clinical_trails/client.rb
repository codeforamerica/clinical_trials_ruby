require 'clinical_trials/client'
require 'clinical_trials/client/connection'
require 'clinical_trials/client/request'


module ClinicalTrials
  class Client
    include ClinicalTrials::Client::Connection
    include ClinicalTrials::Client::Request

  end
end