program cod
    integer :: res , moz , out
    res = (0*10) + (9*9) + (2*8) + (4*7) + (3*6) + (8*5) + (5*4) + (6*3) + (3*2)
    moz = mod(res,11)
    out = moz - 11
    
    if (mod(out,10) == -4) then
        print *, "OK", out
    else
        print *, "No", out
    end if
end program cod

