program bank
    integer :: i
    integer :: num(16)
    integer :: result, cur
    integer :: results(16)

    result = 0

    num = [5, 0, 2, 2, 6, 8, 2, 3, 4, 5, 3, 9, 9, 4, 2, 6]

    do i = 1, 16
        if (mod(i, 2) == 1) then
            cur = num(i) * 2
        else
            cur = num(i) * 1
        end if

        if (cur >= 10 .and. cur < 100) then
            cur = cur - 9
        end if

        results(i) = cur
        result = result + cur
    end do

    if (mod(result, 10) == 0) then
        print *, "ok"
    else
        print *, "no"
    end if
end program bank

