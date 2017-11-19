global _fact: label;
begin ".text"
<_fact>
        push ar3, gr3;
        push ar2, gr2;
        push ar1, gr1;
        push ar0, gr0;
        ar0 = ar7 - 10;
        gr0 = [--ar0];
        gr2 = gr0;
        gr1 = gr0;
        gr3 = gr0;
        goto label1;
<label1> 
        gr0 = gr2;
        gr3--;
        gr1 = gr3 - 1;
        if > goto label3;
        goto label2;
<label3>
        gr2 = gr2 + gr0;
        gr1--;
        if > goto label3;
        goto label1;
<label2>
<exit_fact>
        pop ar0, gr0;
        pop ar1, gr1;
        pop ar2, gr2;
        pop ar3, gr3;
        return;
end ".text";                                                                                
