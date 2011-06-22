module ClinicalTrials
  class Client
    module Api
      
      # Returns search results for given term
      # @param term [String] The term to search for
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://clinicaltrials.gov/ct2/info/linking
      # @example
      #   searc("lyme disease")
      
      def search(term, options={})
        term.sub(/\s/, "+")
        get("search?term=%22#{term}%22&displayxml=true", options)
      end
    end
  end
end