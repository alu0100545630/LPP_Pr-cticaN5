#se define el máximo común divisor de dos o más números enteros al mayor número que los divide sin dejar resto 
def gcd(n, d)
   n1 = n.abs
   n2 = d.abs
   if (n2 == 0)   #Por definicion  mcd (a,0)=a
      return n1
   else 
      if (n1 == 0)
         return n2
      else 
         gcd = 1
         k = 1
	 while ( k <= n1 ) and ( k <= n2 )
            if ( n1 % k  == 0 ) and ( n2 % k == 0 )
               gcd = k
            end
            k += 1
	 end
      end
   end
   return gcd
end