global _max: label;
begin ".text"
<_max>
        push ar5, gr5;
        push ar4, gr4;
        push ar3, gr3;
        push ar2, gr2;
        push ar1, gr1;
        push ar0, gr0;
        ar0 = ar7 - 8;
        gr0 = [--ar0];
        gr1 = [--ar0];
        gr2 = [--ar0];
        gr5 = gr0 - gr1;
        if > goto label1;
        goto  label2;
<label1>
        gr4 = gr0;
        goto label3;
<label2>
        gr4 = gr1;
        goto label3;
<label3>
        gr5 = gr2 - gr4;
        if > goto label4;
        goto label5;
<label4>
        gr4 = gr2;
        goto label5;
<label5>
<exit_max>
        pop ar0, gr0;
        pop ar1, gr1;
        pop ar2, gr2;
        pop ar3, gr3;
        pop ar4, gr4;
        pop ar5, gr5;
        return;
end ".text";                                                                                   
