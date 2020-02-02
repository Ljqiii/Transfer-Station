# Linear algebra Q



#### p111.3


$$
\begin{cases}
x_1+x_2+2x_3+3x_4=1\\
x_1+2x_2+4x_3+2x_4=2\\
3x_1-x_2-ax_3+15x_4=3\\
x_1-5x_2-10x_3+12x_4=b\\
\end{cases}
$$

<center>a,b取值 方程无解、有唯一解、有无穷解；有无穷解时求其通解</center>

$$
A|b=\left[
\begin{matrix} 
1&1&2&3&1\\
1&2&4&2&2\\
3&-1&-a&15&3\\
1&-5&-10&12&b
\end{matrix}
\right]\
A|b=\left[
\begin{matrix} 
1&1&2&3&1\\
0&1&2&-1&1\\
0&0&2-a&2&4\\
0&0&0&3&b+5
\end{matrix}
\right]\
$$



$$
当
\begin{cases}
a=2\\
b\ne1
\end{cases}
时，R(A)=3,R(A|b)=4,R(A)<R(A|b)
$$

$$
A=\left[
\begin{matrix} 
1&1&2&3\\
0&1&2&-1\\
0&0&0&1\\
0&0&0&0
\end{matrix}
\right]\
A|b=\left[
\begin{matrix} 
1&1&2&3&1\\
0&1&2&-1&1\\
0&0&0&2&4\\
0&0&0&3&b+5
\end{matrix}
\right]\
$$

<center>方程组无解</center>



$$
当
a\ne2
时，R(A)=4,R(A|b)=4,R(A)=R(A|b)=n
$$

$$
A=\left[
\begin{matrix} 
1&1&2&3\\
0&1&2&-1\\
0&0&2-a&2\\
0&0&0&3
\end{matrix}
\right]\
A|b=\left[
\begin{matrix} 
1&1&2&3&1\\
0&1&2&-1&1\\
0&0&2-a&2&4\\
0&0&0&3&b+5
\end{matrix}
\right]\
$$

<center>方程组有唯一解</center>



$$
当
\begin{cases}
a=2\\
b=1
\end{cases}
时，R(A)=3,R(A|b)=3,R(A)=R(A|b)<n
$$

$$
A=\left[
\begin{matrix} 
1&1&2&3\\
0&1&2&-1\\
0&0&0&1\\
0&0&0&0
\end{matrix}
\right]\
A|b=\left[
\begin{matrix} 
1&1&2&3&1\\
0&1&2&-1&1\\
0&0&0&1&2\\
0&0&0&0&0
\end{matrix}
\right]\
$$

<center>方程组有无穷解</center>



$$
设未知数个数k=n-R(A|b)=1
$$

$$
A|b=\left[
\begin{matrix} 
1&0&0&4&0\\
0&1&2&0&3\\
0&0&0&1&2\\
0&0&0&0&0
\end{matrix}
\right]\
$$

$$
可得一般方程\begin{cases}
x_1+4x_4=0\\
x2+2x_3=3\\
x_4=2
\end{cases}
\begin{cases}
x_1=-4x_4\\
x_2=3-2x_3\\
x_3=k\\
x_4=2
\end{cases}
\begin{cases}
x_1=-8+0k\\
x_2=3-2k\\
x_3=0+k\\
x_4=2+0k
\end{cases}
$$

$$
通解为
\left[
\begin{matrix} 
-8\\
3\\
0\\
2
\end{matrix}
\right]
+k
\left[
\begin{matrix} 
0\\
-2\\
1\\
0
\end{matrix}
\right]
$$

##### Q: 如此解题是否符合规范

##### Q: 一般解常数项是否为非齐次线性方程组的特解



#### p86.3.2.1

##### Q: 为什么需要求方程组的系数行列式



#### p114.4.1.1

##### Q: 为什么$\lambda_1=2$时$x_3=1$；$\lambda_2=1$时$x_1=1$；$\lambda_3=-1$时$x_3=4$

 

#### T：

$设A为n阶可逆矩阵，求R(A)$

$\because A可逆, A\ne0, |A^{-1}|=\frac{1}{|A|}, |A^{-1}|\ne0 \therefore R(A^{-1})=n$



$n+1个n维向量构成的向量组一定是线性相关的​$

$?$



$m\cdot n 矩阵A的秩为r，则AX=0有非零解的充要条件是r<n$

$?$