;Header and description

(define (domain chess)

    (:requirements :strips :fluents :typing :conditional-effects)

    (:types
        piece square color
    )

    (:constants
        black white - color
    )

    (:predicates
        (on ?s - square ?p - piece)
        (can-move ?from_square - square ?to_square - square)
        (is-empty ?s - square)
        (has-color ?p - piece ?c -color)
        (has-piece-of-color ?s - square ?c - color)
    )

    (:action move
        :parameters (?p - piece ?from_square ?to_square - square ?c - color)
        :precondition (and
            (has-color ?p ?c)
            (on ?from_square ?p)
            (is-empty ?to_square)
            (can-move ?from_square ?to_square)
        )
        :effect (and
            (not (on ?from_square ?p))
            (on ?to_square ?p)
            (is-empty ?from_square)
            (not (is-empty ?to_square))
            (not (has-piece-of-color ?from_square ?c))
            (has-piece-of-color ?to_square ?c)
        )
    )
)