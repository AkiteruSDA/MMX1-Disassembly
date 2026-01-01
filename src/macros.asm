macro hwRegInitDataEntry8(initialAddr, ...)
    db sizeof(...)<<1
    dw <initialAddr>
    !i #= 0
    while !i < sizeof(...)
      db <...[!i]>
      !i #= !i+1
    endwhile
endmacro

macro hwRegInitDataEntry16(initialAddr, ...)
    db sizeof(...)<<1|1
    dw <initialAddr>
    !i #= 0
    while !i < sizeof(...)
      dw <...[!i]>
      !i #= !i+1
    endwhile
endmacro
