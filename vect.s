global _BrushEvOdd: label;
begin ".text"
<_BrushEvOdd>
        push ar4, gr4;
        push ar3, gr3;
        push ar2, gr2;
        push ar1, gr1;
        push ar0, gr0;
        ar4 = ar7 - 12;
        gr1 = [--ar4];
        ar0 = [--ar4];
        ar1 = [--ar4];
        ar2 = [--ar4];
        gr0 = 4;
        fpu 0 rep 16 vreg0 = [ar0++gr0];
	    fpu 0 rep 16 [ar1++] = vreg0;
        ar4 = ar7 - 14;
        ar0 = [--ar4];
        ar0 = ar0 + 2;
        fpu 0 rep 16 vreg1 = [ar0++gr0];
	    fpu 0 rep 16 [ar2++] = vreg1;
<exit_BrushEvOdd>
        pop ar0, gr0;
        pop ar1, gr1;
        pop ar2, gr2;
        pop ar3, gr3;
        pop ar4, gr4;
        return;
end ".text";                                                                                
