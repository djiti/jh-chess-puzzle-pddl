(define (problem jh_chess_puzzle
    )
    (:domain chess)
    (:objects
        s31 - square
        s21 s22 - square
        s11 s12 s13 - square
        s00 s01 s02 s03 - square
        bk1 bk2 wk1 wk2 - piece ; Black and White Knights, numbered one and two
        )

    (:init
        (has-color bk1 black)
        (has-color bk2 black)
        (has-color wk1 white)
        (has-color wk2 white)
        (on s00 bk1)
        (has-piece-of-color s00 black)
        (is-empty s01)
        (on s02 bk2)
        (has-piece-of-color s02 black)
        (is-empty s03)
        (is-empty s11)
        (on s12 wk1)
        (has-piece-of-color s12 white)
        (is-empty s13)
        (is-empty s21)
        (is-empty s22)
        (on s31 wk2)
        (has-piece-of-color s31 white)
        (can-move s31 s12)
        (can-move s21 s02)
        (can-move s21 s13)
        (can-move s21 s00)
        (can-move s22 s01)
        (can-move s22 s03)
        (can-move s11 s03)
        (can-move s12 s31)
        (can-move s12 s00)
        (can-move s13 s21)
        (can-move s13 s01)
        (can-move s00 s21)
        (can-move s00 s12)
        (can-move s01 s22)
        (can-move s01 s13)
        (can-move s02 s21)
        (can-move s03 s11)
        (can-move s03 s22)
    )

    (:goal
        (and
            (has-piece-of-color s00 white)
            (has-piece-of-color s02 white)
            (has-piece-of-color s12 black)
            (has-piece-of-color s31 black)
        )
    )
)