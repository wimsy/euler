# From ice_cream in the problem 37 forum...

def isprime(n)
  return false if n<2
  p=2
  while p*p<=n
    return false if(n%p==0)
    p+=1
    end
  true
  end

def prlist(lim)  #generates list of primes til limit
  list=[]
  a=[true]*(lim+1)
  a.each_with_index {|e,i|
    if i>=2 && e
      a[i]=false
      list<<i
      i.upto(lim/i){|j| a[i*j]=false }
      end
    }
  list
  end
  
def trunc(num)
  return false if num<8
  prime=true
  cp=num.to_s[1..-1].to_i
  num=num/10
  while num!=0 && prime
    prime = isprime(num) && isprime(cp)
    num=num/10
    cp=cp.to_s[1..-1].to_i
    end
  prime
  end

list,sum = [],0
prlist(1000000).each {|pr| (list<<pr; sum+=pr) if trunc(pr) }
p list,sum