class TrainerSerializer
    def initialize(trainer_object)
      @trainer = trainer_object
    end
   
    def to_serialized_json
      @trainer.to_json(:include => {
        :pokemons => {:only => [:id, :species, :nickname]},
      }, :except => [:updated_at, :created_at])
    end
  end
  