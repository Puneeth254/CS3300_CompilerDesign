class Factorial{
    public static void main(String[] a){
        System.out.println(new Fac().ComputeFac((10+0)));
    }
}

class Fac {
    public int ComputeFac(int num){
        int num_aux ;
        int ans;

        ans = 1;
        num_aux = 1;
        while(num_aux <= num)
        {
            ans = ans * num_aux;
            num_aux = num_aux + 1;
        }
        return ans;
    }
}
