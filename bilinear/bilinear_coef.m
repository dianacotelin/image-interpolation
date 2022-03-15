function a = bilinear_coef(f, x1, y1, x2, y2)
    % =========================================================================
    % Calculeaza coeficientii a pentru interpolarea biliniara intre punctele
    % (x1, y1), (x1, y2), (x2, y1) si (x2, y2)
    % =========================================================================
    
    % TODO: calculeaza matricea A
    A = [1 x1 y1 x1*y1; 1 x1 y2 x1*y2; 1 x2 y1 x2*y1; 1 x2 y2 x2*y2];
    % TODO: calculeaza vectorul b 
    a11 = f(y1, x1);
    a12 = f(y2, x1);
    a21 = f(y1, x2);
    a22 = f(y2, x2); 
    aux = [a11; a12; a21; a22];
    b = A\single(aux);
    % TODO: calculeaza coeficientii
    a = b;
endfunction
