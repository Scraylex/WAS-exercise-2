(define (problem t1-problem)
    (:domain t1-domain)
    (:objects
        ; set of rooms
        room1 - room
        room2 - room
        room3 - room
        room4 - room
        room5 - room
        room6 - room
        room7 - room
        room8 - room
        room9 - room
        room10 - room
        ; set of inhabitants
        inhabitant1 - inhabitant
        inhabitant2 - inhabitant
        inhabitant3 - inhabitant
        inhabitant4 - inhabitant
        inhabitant5 - inhabitant
        inhabitant6 - inhabitant
        inhabitant7 - inhabitant
        inhabitant8 - inhabitant
        inhabitant9 - inhabitant
        inhabitant10 - inhabitant
        ; set of possible times to arrive. Our worker is very busy working from 8-8. But this provides the possibility of time being unused and conflicted
        am8 - time
        am9 - time
        am10 - time
        am11 - time
        am12 - time
        pm1 - time
        pm2 - time
        pm3 - time
        pm4 - time
        pm5 - time
        pm6 - time
        pm7 - time
        pm8 - time
    )

    (:init
        ; all rooms are individually assigned
        (assignedRoom inhabitant1 room1)
        (assignedRoom inhabitant2 room2)
        (assignedRoom inhabitant3 room3)
        (assignedRoom inhabitant4 room4)
        (assignedRoom inhabitant5 room5)
        (assignedRoom inhabitant6 room6)
        (assignedRoom inhabitant7 room7)
        (assignedRoom inhabitant8 room8)
        (assignedRoom inhabitant9 room9)
        (assignedRoom inhabitant10 room10)
        ; all rooms start locked
        (locked room1)
        (locked room2)
        (locked room3)
        (locked room4)
        (locked room5)
        (locked room6)
        (locked room7)
        (locked room8)
        (locked room9)
        (locked room10)
        ;Schedule inhabitant 1-8 iteratively from 8am
        (arrives inhabitant1 am8)
        (arrives inhabitant2 am9)
        (arrives inhabitant3 am10)
        (arrives inhabitant4 am11)
        (arrives inhabitant5 am12)
        (arrives inhabitant6 pm1)
        (arrives inhabitant7 pm2)
        (arrives inhabitant8 pm3)
        ;Schedule inhabitant 1-8 iteratively from 9am
        (arrives inhabitant1 am9)
        (arrives inhabitant2 am10)
        (arrives inhabitant3 am11)
        (arrives inhabitant4 am12)
        (arrives inhabitant5 pm1)
        (arrives inhabitant6 pm2)
        (arrives inhabitant7 pm3)
        (arrives inhabitant8 pm4)
        ;Schedule inhabitant bottom up 1-8 iteratively from 8pm
        (arrives inhabitant1 am8)
        (arrives inhabitant2 pm2)
        (arrives inhabitant3 pm3)
        (arrives inhabitant4 pm4)
        (arrives inhabitant5 pm5)
        (arrives inhabitant6 pm6)
        (arrives inhabitant7 pm7)
        (arrives inhabitant8 pm8)
        ; This is to force collisions
        (arrives inhabitant9 am12)
        (arrives inhabitant10 pm1)
    )

    (:goal
        (and
        ; Inhabitants are setup in their rooms
            (setup inhabitant1)
            (setup inhabitant2)
            (setup inhabitant3)
            (setup inhabitant4)
            (setup inhabitant5)
            (setup inhabitant6)
            (setup inhabitant7)
            (setup inhabitant8)
            (setup inhabitant9)
            (setup inhabitant10)
        )
    )
)