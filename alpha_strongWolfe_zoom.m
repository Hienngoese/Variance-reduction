 function alphas = alpha_strongWolfe_zoom(func,grad,x,p,alphalo,alphahi,c1,c2)
 fx = feval(func,x,p);
 gx = feval(grad,x,p);
 while 1
    alphax = 1/2*(alphalo + alphahi);
    xx = x + alphax*p;
    fxx = feval(func,xx,p);
    gxx = feval(grad,xx,p);
    xl = x + alphalo*p;
    fxl = feval(func,xl,p);
   if ((fxx > fx + c1*alphax*gx) | (fxx >= fxl))
      alphahi = alphax;
   else
      if abs(gxx) <= -c2*gx
        alphas = alphax;
        break;
      end
      if gxx*(alphahi-alphalo) >= 0
      alphahi = alphalo;
      end
      alphalo = alphax;
   end
end
