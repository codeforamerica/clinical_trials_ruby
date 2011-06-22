module ClinicalTrials
  class Client
    module Api
      
      def search(term)
        term.sub(/\s/, "+")
        get("search?term=%22#{term}%22&displayxml=true")
      end
    end
  end
end