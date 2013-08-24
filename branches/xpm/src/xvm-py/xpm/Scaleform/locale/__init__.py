""" Mods loader (c) sirmax 2013 """

print "[XPM] preloader"
try:
    import gui.mods
except:
    print "============================="
    import traceback
    traceback.print_exc()
    print "============================="
