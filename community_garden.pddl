(define (domain communityGarden)
     (:requirements :typing)
     (:types
          gardeningTool location volunteer - obj
          tiller seeds wateringCan - gardeningTool
     )

     (:constants
          gardenPlot - location
     )

     (:predicates
          (at ?o - obj ?loc - location)
          (has-tiller ?v - volunteer ?t - tiller)
          (has-seeds ?v - volunteer ?s - seeds)
          (has-watering-can ?v - volunteer ?wc - wateringCan)
          (is-cultivator ?v - volunteer)
          (is-planter ?v - volunteer)
          (is-waterer ?v - volunteer)
          (soil-is-tilled)
          (seeds-are-sown)
          (garden-is-watered)
          (garden-is-thriving)
     )

     (:action move
          :parameters (?v - volunteer ?from - location ?to - location)
          :precondition (and)
          :effect (and)
     )

     (:action get-tiller
          :parameters (?v - volunteer ?t - tiller ?loc - location)
          :precondition (and)
          :effect (and)
     )

     (:action get-seeds
          :parameters (?v - volunteer ?s - seeds ?loc - location)
          :precondition (and)
          :effect (and)
     )

     (:action get-watering-can
          :parameters (?v - volunteer ?wc - wateringCan ?loc - location)
          :precondition (and)
          :effect (and)
     )

     (:action till-soil
          :parameters (?v - volunteer ?tool - tiller)
          :precondition (and)
          :effect (and)
     )

     (:action sow-seeds
          :parameters (?v - volunteer ?tool - seeds)
          :precondition (and)
          :effect (and)
     )

     (:action water-garden
          :parameters (?v - volunteer ?tool - wateringCan)
          :precondition (and)
          :effect (and)
     )

     (:action celebrate-garden-opening
          :parameters (?c - volunteer ?p - volunteer ?w - volunteer)
          :precondition (and)
          :effect (and)
     )
)