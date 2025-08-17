# WAP to calculate an angle between hour and minute hand.

hours = int(input("Enter Hours (1-12) : "))
minutes = int(input("Enter Minutes (0-59) : "))

hours = hours % 12

hour_angle = (hours * 30) + (minutes * 0.5)
minute_angle = minutes * 6

angle = abs(hour_angle - minute_angle)

if angle > 180 :
    angle = 360 - angle

print("Angle between hour and minute hand : ", angle, " degrees")
