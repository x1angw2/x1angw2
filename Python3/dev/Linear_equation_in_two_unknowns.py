import math

def quadratic(a,b,c):

    if a != 0:

        d = b**2-4*a*c

        if d > 0:

            x1 = (-b+math.sqrt(d))

            x2 = (-b-math.sqrt(d))

            print('该方程有两个根x1=%.2f，x2=%.2f'%(x1,x2))

        elif d == 0:

            x = -b/(2*a)

            print('该方程只有一个根x=%.2f'%x)

        else:

            print('无解')

    else:

        print('该方程不是一元二次方程')

a = float(input('请输入a='))

b = float(input('请输入b='))

c = float(input('请输入c='))

quadratic(a,b,c)
