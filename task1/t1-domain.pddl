(define (domain t1-domain)
    (:requirements :typing)
    (:types
        room - object
        inhabitant - object
        time - object
    )
    (:predicates
        (arrives ?i - inhabitant ?t - time)
        (setup ?i - inhabitant)
        (assignedRoom ?i - inhabitant ?r - room)
        (locked ?r - room)
        (atRoom ?r - room ?t - time)
        (inRoom ?r - room)
    )
    ; function to setup the inhabitants. Interface as defined per excercise instructions
    (:action showRoom
        :parameters (?t - time ?i - inhabitant ?r - room)
        :precondition (and
            (atRoom ?r ?t)
            (arrives ?i ?t)
            (assignedRoom ?i ?r)
            (not (locked ?r))
            (inRoom ?r)
            (not (setup ?i))
        )
        :effect (and
            (setup ?i)
            (locked ?r)
            (not (inRoom ?r))
        )
    )
    ; inRoom could also be done without a variable assoziated 
    (:action join
        :parameters (?t - time ?r - room)
        :precondition (and
            (not (inRoom ?r))
            (atRoom ?r ?t)
            (not (locked ?r))
        )
        :effect (and
            (inRoom ?r)
        )
    )
    ; unlock checks if the room is locked and sets your presence at a room. Ensuring the worker can only be at one place at a time
    (:action unlock
        :parameters (?t - time ?r - room)
        :precondition (and
            (locked ?r)
        )
        :effect (and
            (not (locked ?r))
            (atRoom ?r ?t)
        )
    )
)