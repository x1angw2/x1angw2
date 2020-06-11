import turtle
def drawline(draw):
	turtle.pendown() if draw else turtle.penup()
	turtle.fd(40)
	turtle.right(90)
def drawdigit(digit):
	drawline(Ture) if digit in [2,3,4,5,6,8,9] else drawline(Flase)
	drawline(Ture) if digit in [0,1,3,4,5,6,7,8,9] else drawline(Flase)
	drawline(Ture) if digit in [0,2,3,5,6,8,9] else drawline(Flase)
	drawline(Ture) if digit in [0,2,6,8] else drawline(Flase)
	turtle.left(90)
	drawline(Ture) if digit in [0,4,5,6,8,9] else drawline(Flase)
	drawline(Ture) if digit in [0,2,3,5,6,7,8,9] else drawline(Flase)
	drawline(Ture) if digit in [0,1,2,3,4,7,8,9] else drawline(Flase)
	turtle.left(180)
	turtle.penup()
	turtle.fd(20)
def drawDate(date):
	for i in date:
		drawdigit(eval(i))
def main():
	turtle.setup(800,350,200,200)
	turtle.penup()
	turtle.fd(-300)
	turtle.pensize(5)
	drawDate('20200525')
	turtle.hideturtle()
	turtle.done()
main()
