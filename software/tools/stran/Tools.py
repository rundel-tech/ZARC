# !/usr/bin/env python3

"""Handy small routines, initially for CUOSL
Version 1.0, by Merlin Skinner, 14/7/09
"""

"""Convert the supplied 8-bit unsigned number into a two digit hex string"""
def Hex8(n):
    return(hex(n)[2:].zfill(2))

"""Convert the supplied 16-bit unsigned number into a four digit hex string"""
def Hex16(n):
    return(hex(n)[2:].zfill(4))
    
"""Convert the supplied 24-bit unsigned number into a six digit hex string"""
def Hex24(n):
    return(hex(n)[2:].zfill(6))
    
"""Convert the supplied 32-bit unsigned number into an eight digit hex string"""
def Hex32(n):
    return(hex(n)[2:].zfill(8))
    
"""Convert time period in microseconds to days, hours, minutes...microseconds"""
def uSecsToString(t):
    #Constants
    uSecsPermSec=1000
    uSecsPerSec=uSecsPermSec*1000
    uSecsPerMin=uSecsPerSec*60
    uSecsPerHour=uSecsPerMin*60
    uSecsPerDay=uSecsPerHour*24
    
#    print t,
    #Time arithmetic
    days=int(t/uSecsPerDay)
    t=t-(uSecsPerDay*days)
#    print "[",t,    
    hours=int(t/uSecsPerHour)
    t=t-(uSecsPerHour*hours)
#    print t,
    mins=int(t/uSecsPerMin)
    t=t-(uSecsPerMin*mins)
#    print t,
    secs=int(t/uSecsPerSec)
    t=t-(uSecsPerSec*secs)
#    print t,
    ms=int(t/uSecsPermSec)
    t=t-(uSecsPermSec*ms)
#    print t,"]"
    us=t
    
    #Generate output string
    if days!=0:
        return (str(days)+" days, "+str(hours)+" hours, "+str(mins)+" mins")
    if hours!=0:
        return(str(hours)+" hours, "+str(mins)+" mins, "+str(secs)+" secs")
    if mins!=0:
        return(str(mins)+" mins, "+str(secs)+" secs")
    if secs!=0:
        return(str(secs)+" secs, "+str(ms)+" ms")
    if ms!=0:
        return(str(ms)+" ms, "+str(us)+" us")
    if us!=0:
        return(str(us)+" us")
#        r=r+"%d us"%(us)

    return("zero")

