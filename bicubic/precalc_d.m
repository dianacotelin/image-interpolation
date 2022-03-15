function [Ix, Iy, Ixy] = precalc_d(I)
    % =========================================================================
    % Prealculeaza matricile Ix, Iy si Ixy ce contin derivatele dx, dy, dxy ale 
    % imaginii I pentru fiecare pixel al acesteia
    % =========================================================================
    
    % obtine dimensiunea imaginii
    [m n nr_colors] = size(I);
    
    % TODO: fa cast matricii I la double
    I = double(I);
    % TODO: calculeaza matricea cu derivate fata de x Ix
    Ix = zeros(m,n);
    Ixy = zeros(m,n);
    Iy = zeros(m,n);
    for i = 1:m
      for j = 1:n
        if((i == 1) || (i == m))
          Iy(i,j) = 0;
        else
          Iy(i,j) = fy(I,i,j);
        endif
        if((j == 1) || (j == n))
          Ix(i,j) = 0;
        else
          Ix(i,j) = fx(I,i,j);
        endif
        if((i == 1) || (i == m)||(j == 1) || (j == n))
          Ixy(i,j) = 0;
        else
          Ixy(i,j) = fxy(I,i,j);
        endif
      endfor
    endfor
    % TODO: calculeaza matricea cu derivate fata de y Iy
    % TODO: calculeaza matricea cu derivate fata de xy Ixy
    
    
endfunction
