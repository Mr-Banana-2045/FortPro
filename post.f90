program post
    integer :: number, digit
    integer :: counts(10)
    integer :: i, position
    logical :: hast

    counts = 0
    number = 1035946785
    hast = .false.
    position = 0

    do while (number > 0)
        digit = mod(number, 10)
        counts(digit + 1) = counts(digit + 1) + 1

        position = position + 1

        if (position == 5 .and. digit == 5) then
            print *, "Error"
            stop
        end if

        if (digit == 2) then
            print *, "Error: two"
            stop
        end if

        number = number / 10
    end do

    do i = 0, 9
        if (counts(i + 1) > 1) then
            hast = .true.
            exit
        end if
    end do

    if (hast) then
        print *, "no"
    else
        print *, "yes"
    end if
end program post
