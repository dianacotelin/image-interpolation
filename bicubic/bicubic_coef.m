function A = bicubic_coef(f, Ix, Iy, Ixy, x1, y1, x2, y2)
    % =========================================================================
    % Calculeaza coeficientii de interpolare bicubica pentru 4 puncte alaturate
    % =========================================================================

    % TODO: calculeaza matricile intermediare
    M1 = [1 0 0 0; 1 1 1 1; 0 1 0 0; 0 1 2 3];
    M2 = [1 1 0 0; 0 1 1 1; 0 1 0 2; 0 1 0 3];
    M1_inv = inv(M1);
    M2_inv = inv(M2);
    f00 = f(y1,x1);
    f01 = f(y2,x1);
    f10 = f(y1,x2);
    f11 = f(y2,x2);
    
    fy02 = Iy(y1,x1);
    fy03 = Iy(y2,x1);
    fy12 = Iy(y1,x2);
    fy13 = Iy(y2,x2);
    
    fx20 = Ix(y1,x1);
    fx21 = Ix(y2,x1);
    fx30 = Ix(y1,x2);
    fx31 = Ix(y2,x2);
    
    fxy22 = Ixy(y1,x1);
    fxy23 = Ixy(y2,x1);
    fxy32 = Ixy(y1,x2);
    fxy33 = Ixy(y2,x2);
    
    M3 = [f00 f01 fy02 fy03; f10 f11 fy12 fy13; fx20 fx21 fxy22 fxy23; fx30 fx31 fxy32 fxy33];
    % TODO: converteste matricile intermediare la double
    M1_inv = double(M1_inv);
    M2_inv = double(M2_inv);
    M3 = double(M3);
    % TODO: calculeaza matricea finala
    A = M1_inv*M3*M2_inv;
endfunction