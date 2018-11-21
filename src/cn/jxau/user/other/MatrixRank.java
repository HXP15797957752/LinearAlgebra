package cn.jxau.user.other;

import org.junit.Test;

public class MatrixRank{
	
	public static int Rank(double[][] Matrix,int error_,int List)  
	{  
	    int n=List;  
	    int m=Matrix.length ;  
	    int i=0;  
	    int i1;  
	    int j=0;  
	    int j1;  
	    double temp1;  
	    if(m>n)  
	    {  
	        i=m;  
	        m=n;  
	        n=i;  
	        i=1;  
	    }  
	    m-=1;  
	    n-=1;  
	    double[][]temp=new double[m+1][n+1];  
	    if(i==0)  
	    {  
	      for(i=0;i<=m;i++)  
	      {  
	          for(j=0;j<=n;j++)  
	          {  
	              temp[i][j]=Matrix[i][j];  
	          }  
	                
	      }  
	    }  
	    else  
	    {  
	        for(i=0;i<=m;i++)  
	        {  
	            for(j=0;j<=n;j++)  
	            {  
	                temp[i][j]=Matrix[j][i];  
	            }  
	        }  
	    }  
	    if(m==0)  
	    {  
	        i=0;  
	        while(i<=n)  
	        {  
	            if(Matrix[0][i]!=0)  
	            {  
	                return 1;  
	            }  
	            i+=1;  
	        }  
	        return 0;  
	    }  
	    double error0;  
	    if(error_==-1)  
	    {  
	        error0=Math.pow(0.1, 10);  
	    }  
	    else  
	    {  
	        error0=Math.pow(0.1, error_);  
	    }  
	    i=0;  
	    while(i<=m)  
	    {  
	        j=0;  
	        while(j<=n)  
	        {  
	            if(temp[i][j]!=0)  
	            {  
	                error0*=temp[i][j];  
	                i=m;  
	                break;  
	            }  
	            j+=1;  
	        }  
	        i+=1;  
	    }  
	    double error1;  
	    for(i=0;i<=m;i++)  
	    {  
	        j=0;  
	        while(j<=n)  
	        {  
	            if(temp[i][j]!=0)  
	            {  
	                break;  
	            }  
	            j+=1;  
	        }  
	        if(j<=n)  
	        {  
	            i1=0;  
	            while(i1<=m)  
	            {  
	                if(temp[i1][j]!=0&&i1!=i)  
	                {  
	                    temp1=temp[i][j]/temp[i1][j];  
	                    error1=Math.abs((temp[i][j]-temp[i1][j]*temp1))*100;  
	                    error1+=error0;  
	                    for(j1=0;j1<=n;j1++)  
	                    {  
	                        temp[i1][j1]=temp[i][j1]-temp[i1][j1]*temp1;  
	                        if(Math.abs(temp[i1][j1])<error1)  
	                        {  
	                            temp[i1][j1]=0;  
	                        }  
	                    }  
	                      
	                }  
	                i1+=1;  
	            }  
	        }  
	    }  
	      
	    i1=0;  
	    for(i=0;i<=m;i++)  
	    {  
	        for(j=0;j<=n;j++)  
	        {  
	            if(temp[i][j]!=0)  
	            {  
	                i1+=1;  
	                break;  
	            }  
	        }  
	    }  
	    return i1;  
	}  
}
