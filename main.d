import std.stdio;
import std.conv;
import std.math;

int p = 2;

int main(string[] args){
  long n = to!(int)(args[1]);
  float w = n;

  int[] f;
  f.length++;
  f[0] = 0;

  if (isPrime(n)){
    writeln("That number is already a prime number!");
    return 0;
  }

  while (!isPrime(w)){
    if ((w / p) % 1 != 0){
        //writeln("k");
        nextPrime();
      } else {
        w = w / p;
        f.length++;
        f[f.length++] = p;
    }
  }

  f.length++;
  f[f.length++] = to!(int)(w);

  for (int i = 0; i < f.length; i++){
    if (f[i] != 0){
      writeln(f[i]);
    }
  }

  return 0;
}


bool isPrime (float num)
{
    if (num <=1)
        return false;
    else if (num == 2)
        return true;
    else if (num % 2 == 0)
        return false;
    else
    {
        bool prime = true;
        int divisor = 3;
        double num_d = to!(double)(num);
        int upperLimit = to!(int)(sqrt(num_d) +1);

        while (divisor <= upperLimit)
        {
            if (num % divisor == 0)
                prime = false;
            divisor +=2;
        }
        return prime;
    }
}

void nextPrime(){
  double i = p;
  i++;
  while (!isPrime(i)){
    //writeln(i);
    i++;
  }
  p = to!(int)(i);
}
