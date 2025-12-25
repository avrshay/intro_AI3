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
          :precondition (and (at ?v ?from))
          :effect (and (at ?v ?to)
                    (not(at ?v ?from)))
     )

      (:action get-tiller
          :parameters (?v - volunteer ?t - tiller ?loc - location)
          :precondition (and (is-cultivator ?v)
                              (at ?v ?loc)
                              (at ?t ?loc))
          :effect (and (has-tiller ?v ?t)
                         (not(at ?t ?loc)))
     )

    (:action get-seeds
          :parameters (?v - volunteer ?s - seeds ?loc - location)
          :precondition (and (is-planter ?v)
                              (at ?v ?loc)
                              (at ?s ?loc))
          :effect (and (has-seeds ?v ?s)
                         (not(at ?s ?loc)))
     )

      (:action get-watering-can
          :parameters (?v - volunteer ?wc - wateringCan ?loc - location)
          :precondition (and (is-waterer ?v)
                              (at ?v ?loc)
                              (at ?wc ?loc))
          :effect (and (has-watering-can ?v ?wc)
                         (not(at ?wc ?loc)))
     )

     (:action till-soil
          :parameters (?v - volunteer ?tool - tiller)
          :precondition (and(at ?v gardenPlot)
            (has-tiller ?v ?tool)
            (is-cultivator ?v))

          :effect (and(soil-is-tilled))
     )

     (:action sow-seeds
          :parameters (?v - volunteer ?tool - seeds)
          :precondition (and(at ?v gardenPlot)
            (has-seeds ?v ?tool)
            (is-planter ?v)
            (soil-is-tilled))

          :effect (and (seeds-are-sown))
     )

     (:action water-garden
          :parameters (?v - volunteer ?tool - wateringCan)
          :precondition (and(at ?v gardenPlot)
            (has-watering-can ?v ?tool)
            (is-waterer ?v)
            (seeds-are-sown))

          :effect (and(garden-is-watered))
     )

     (:action celebrate-garden-opening
          :parameters (?c - volunteer ?p - volunteer ?w - volunteer)
          :precondition  (and(at ?c gardenPlot)
            (at ?p gardenPlot)
            (at ?w gardenPlot)
            (is-waterer ?w)
            (is-planter ?p)
            (is-cultivator ?c)
            (soil-is-tilled)
            (seeds-are-sown)
            (garden-is-watered))

          :effect (and(garden-is-thriving))
     )
)