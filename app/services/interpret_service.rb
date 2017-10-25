class InterpretService
    def self.call action, params
      case action
      when "list", "search", "search_by_hashtag"
        FaqModule::ListService.new(params, action).call()
      when "create"
        FaqModule::CreateService.new(params).call()
      when "remove"
        FaqModule::RemoveService.new(params).call()
      when "ls", "link_search", "find_link_hashtag"
        LinkModule::ListService.new(params, action).call()
      when "add"
        LinkModule::CreateService.new(params).call()
      when "rm"
        LinkModule::RemoveService.new(params).call()
      when "help"
        HelpService.call()
      else
        "Não compreendi o seu desejo"
      end
    end
  end