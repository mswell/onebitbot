module LinkModule
    class CreateService
      def initialize(params)
        # TODO: identify origin and set company
        @company = Company.last
        @answer = params["answer-original"]
        @hashtags = params["hashtags-original"]
      end
  
      def call
        return 'Hashtag Obrigatória' if @hashtags == nil
        Link.transaction do
          link = Link.create(answer: @answer, company: @company)
          return "Hashtag Obrigatória" if @hashtags == nil
          @hashtags.split(/[\s,]+/).each do |hashtag|
            link.hashtags << Hashtag.create(name: hashtag)
          end
        end
        "Criado com sucesso"
      end
    end
  end