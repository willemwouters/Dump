#!/usr/bin/python2.7
import os
import tkMessageBox
import subprocess

from Tkinter import *
from threading import Thread
from time import sleep
from xml.dom import minidom

homedir="/home/wouters/"
rootdir=homedir + "perforce/personal"
androidroot=rootdir + "/Android/Build"
    
def edit_sideload():
    os.system("gedit `which sideload`  &")

def run_quicksideload():
    os.system("x-terminal-emulator -e sideload")

def enable_logging():
    os.system('adb shell "echo log.tag.all = VERBOSE > /data/local.prop"  &')
    print "Done enabling...."

def view_logging():
    os.system("x-terminal-emulator -e adb logcat")

def cswup():
    os.system('TT_CANbusControl_test uudt 0x63E 0x1000000000000000 &')

def cswleft():
    os.system('TT_CANbusControl_test uudt 0x63E 0x3000000000000000 &')

def cswenter():
    os.system('TT_CANbusControl_test uudt 0x63E 0x0100000000000000 &')

def cswright():
    os.system('TT_CANbusControl_test uudt 0x63E 0x4000000000000000 &')

def cswleftrr():
    os.system('TT_CANbusControl_test uudt 0x63E 0x0005000000000000 &')

def cswdown():
    os.system('TT_CANbusControl_test uudt 0x63E 0x2000000000000000 &')

def cswrightrr():
    os.system('TT_CANbusControl_test uudt 0x63E 0x0006000000000000 &')

def cswback():
    os.system('TT_CANbusControl_test uudt 0x63D 0x0000000000000000 &')

def cswmenu():
    os.system('TT_CANbusControl_test uudt 0x63D 0x0700000000000000 &')

def displayon():
    os.system('TT_CANbusControl_test uudt 0x58f 0x800230C000000000 &')
    os.system('TT_CANbusControl_test uudt 0x568 0x0000000003000000 &')
    os.system('TT_CANbusControl_test uudt 0x558 0x0100000000000000 &')
    os.system('TT_CANbusControl_test uudt 0x578 0x0000064005000000 &')

def activatetcu():
    os.system('TT_CAN2VDS_test 256 1 &')
    os.system('TT_CAN2VDS_test 264 1 &')
    os.system('TT_CAN2VDS_test 241 1 &')
    os.system('TT_CAN2VDS_test 240 1 &')
    os.system('TT_CAN2VDS_test 229 1 &')

def speedon():
    os.system('TT_CAN2VDS_test 1 510 &')
    os.system('TT_CAN2VDS_test 267 2 &')
    os.system('TT_CAN2VDS_test 1 510 &')

def speedoff():
    os.system('TT_CAN2VDS_test 1 0 &')

def radioon():
    os.system('TT_CANbusControl_test script `which strasbourg-MMCAN-Radio.script` &')

def radiooff():
    os.system('pkill TT_CANbusContro &')

def msmrotcw():
    os.system('TT_CAN2VDS_test 162 258')

def msmrotccw():
    os.system('TT_CAN2VDS_test 162 257 &')

def cswhome():
    os.system('TT_CAN2VDS_test 65 1 &')

def pkillcom():
    os.system('adb shell pkill com &')

def flipflop():
    os.system("adb shell 'echo 1 > /sys/devices/platform/flipflop/value' &")


def hierachy():
    os.system("hierarchyviewer &")


def doremoveapp(pos, items):
    print 'adb shell "cd /system/app; find . -iname "' + items[int(pos[0])][0] + '*" -exec rm {} \;"'
    os.system('adb shell "cd /system/app; find . -iname "' + items[int(pos[0])][0] + '*" -exec rm {} \;"')
    print "Done removing app"
def push_sideload():
    print "Pushing sideloading...."
    os.system('adb push ' + rootdir + '/Android/Common/Libraries/TomTomSideLoading/bin/dex/tomtom_sdk.jar /system/framework/tomtom_sdk.jar')
    os.system('adb reboot')
    print "Done pushing...."
def make_writable():
    os.system("adb shell mv /internalstorage/rootfs.img /internalstorage/rootfs.img.rw")
    os.system('adb reboot')
    print "Done making writable...."
def reboot_device():
    os.system("adb reboot")
def terminal_device():
    os.system("x-terminal-emulator -e adb shell")
def execute(command, option, path):
    process = subprocess.Popen(command, shell=True, bufsize=0, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    subroot = Tk()
    subroot.title(command)
    subroot.minsize(700,500)
    frame2 = Frame(subroot, width=100, height=1,bg = '#ffffff', borderwidth=1, relief="sunken")
    frame2.pack(fill=BOTH, expand=YES)
    scrollbar2 = Scrollbar(frame2) 
    scrollbar2.pack( side = RIGHT, fill=Y)
    editArea2 = Text(frame2, width=1, height=1, wrap="none", yscrollcommand=scrollbar2.set, borderwidth=0, highlightthickness=0)
    scrollbar2.config(command=editArea2.yview)
    editArea2.pack(side="left", fill="both", expand=True)
    # Poll process for new output until finished
    editArea2.insert(INSERT, "Starting command")
    editArea2.pack()
    subroot.update()
    for line in process.stdout:
        editArea2.insert(INSERT, line)
        editArea2.pack()
        editArea2.see('end')
        subroot.update()

    output = process.communicate()[0]
    exitCode = process.returncode

    if (exitCode == 0):
        if(option == 1):
            os.system("adb install -r " + rootdir + path + "/bin/*-debug.apk")
        if(option == 2):
            push_sideload()
        if(option == 3):
            os.system("adb install -r " + rootdir + path + "/bin/*-debug.apk")            
            push_sideload()
        subroot.destroy()
        return output
    else:
        return 0

def threaded_function(arg, option, arg2):
    execute(arg, option, arg2)


def run_buildcommand(arg, option, arg2):
    if __name__ == "__main__":
        thread = Thread(target = threaded_function, args = (arg, option, arg2))
        thread.start()


def run_command(arg):
    if __name__ == "__main__":
        thread = Thread(target = threaded_function, args = (arg, 0, 0))
        thread.start()


def buildscope(scope, full, typebuild, option):
    run_buildcommand("cd " + androidroot + ";" +  androidroot + "/build-all.sh " + typebuild + " -stuttgart -debug -nop4 -Dbuild.mode=debug -Dbuild.profile=stuttgartDevice -Dbuild.scope=" + scope, option, full)


def buildcmd(pos, items, typebuild, option):
    buildscope(items[int(pos[0])][0], items[int(pos[0])][1], typebuild, option)

class BuildApp(Frame):
    def __init__(self, parent, typebuild, option, title, buttontitle, removeapp):
        self.items = list()
        self.stritems = list()
        Frame.__init__(self, parent, background="white")   
        self.itemsfull = list()
        self.scrollbar = Scrollbar(self)
        parent.title(title)    
        self.mylist = Listbox(self, yscrollcommand = self.scrollbar.set )
        self.E1 = Entry(self, bd =5)
        self.scrollbar.pack( side = RIGHT, fill=Y )
        self.scrollbar.config( command = self.mylist.yview )
        if removeapp == False:
            button = Button(self, text=buttontitle, command=lambda:buildcmd(self.mylist.curselection(), self.itemsfull, typebuild, option))
        else:
            button = Button(self, text=buttontitle, command=lambda:doremoveapp(self.mylist.curselection(), self.itemsfull))

        button.pack(fill="x", expand=NO)
        self.E1.pack(fill="x", expand=NO)
        self.E1.bind('<KeyRelease>', self.find)
        xmldoc = minidom.parse(androidroot + '/targetsConfiguration.xml')
        itemlist = xmldoc.getElementsByTagName('project') 
        for s in itemlist :
            arr = str(s.attributes['path'].value).split("/")
            self.items.append([arr[-1], s.attributes['path'].value])
            self.stritems.append(arr[-1])
        self.items.sort()
        self.stritems.sort()
        self.parent = parent
        self.initUI()
    
    def initUI(self):
        self.pack(fill=BOTH, expand=1)

    def index_containing_substring(self, the_list, substring):
        items = list()
        for i, s in enumerate(the_list):
            if substring in s:
                  items.append(i)
        return items

    def find(self, event):
        pat = self.E1.get()
        s = self.index_containing_substring(self.stritems, pat)
        self.populate(s)

    def populate(self, excl):
        i = 0
        if excl:
            self.mylist.delete(0, END)
            del self.itemsfull[:]
            for s in self.items:    
                for e in excl:
                    if(e == i):
                        self.mylist.insert(END, s[0])
                        self.itemsfull.append(s)
                        self.mylist.pack( side = LEFT, fill=BOTH, expand=YES )
                i = i+1
        else:
            del self.itemsfull[:]
            self.mylist.delete(0, END)
            for s in self.items:    
                self.mylist.insert(END, s[0])
                self.itemsfull.append(s)
                self.mylist.pack( side = LEFT, fill=BOTH, expand=YES )
        
    def main(self):
        self.populate({})
            


def buildapp(typebuild, option, title):
    win = Toplevel(root)
    win.minsize(220,280)
    objName = BuildApp(win, typebuild, option, title, "Build App", False)
    objName.main() 

def removeapp():
    win = Toplevel(root)
    win.minsize(220,280)
    objName = BuildApp(win, 0, 0, "Remove an app", "Remove App", True)
    objName.main() 

root = Tk()
root.minsize(592,420)
root.geometry("592x420")
root.title("MFD")
menubar = Menu(root)
menubar.add_command(label="Exit", command=root.quit)
menubar.add_command(label="Device Reboot", command=reboot_device)
menubar.add_command(label="Device Terminal", command=terminal_device)
menubar.add_command(label="Hierarchy Viewer", command=hierachy)
helpmenu = Menu(menubar, tearoff=0)
helpmenu.add_command(label="Help Index")
helpmenu.add_command(label="About...")
menubar.add_cascade(label="Help", menu=helpmenu)

w = Button(root, height=2, width=15, text="Make writable", command=make_writable)
w.grid(row=0, column=0)
w = Button(root, height=2, width=15, text="Enable Logging", command=enable_logging)
w.grid(row=0, column=1)
w = Button(root, height=2, width=15, text="Display On", command=displayon)
w.grid(row=0, column=2)
w = Button(root, height=2, width=15, text="View Logging", command=view_logging)
w.grid(row=0, column=3)

w = Button(root, height=2, width=15, text="Push Sideloading", command=push_sideload)
w.grid(row=1, column=0)


w = Button(root, height=2, width=15, text="Quick Sideload", command=run_quicksideload)
w.grid(row=1, column=1)



w = Button(root, height=2, width=15, text="Edit Sideload script", command=edit_sideload)
w.grid(row=1, column=2)

w = Button(root, height=2, width=15, text="Flip FlipFlop", command=flipflop)
w.grid(row=1, column=3)


w = Button(root, height=2, width=15, text="Compile app", command=lambda:buildapp("compile", 1, "Compile an App"))
w.grid(row=2, column=0)
w = Button(root, height=2, width=15, text="Clean compile app", command=lambda:buildapp("clean compile", 3, "Clean compile an App"))
w.grid(row=2, column=1)


w = Button(root, height=2, width=15, text="Remove App", command=removeapp)
w.grid(row=2, column=2)

w = Button(root, height=2, width=15, text="Pkill com", command=pkillcom)
w.grid(row=2, column=3)


w = Label(root, height=2, width=15, text="")
w.grid(row=3, column=0)
w = Button(root, height=2, width=15, text="<-", command=cswback)
w.grid(row=4, column=0)
w = Button(root, height=2, width=15, text="^", command=cswup)
w.grid(row=4, column=1)
w = Button(root, height=2, width=15, text="MENU", command=cswmenu)
w.grid(row=4, column=2)
w = Button(root, height=2, width=15, text="MSM CW", command=msmrotcw)
w.grid(row=4, column=3)
w = Button(root, height=2, width=15, text="<", command=cswleft)
w.grid(row=5, column=0)
w = Button(root, height=2, width=15, text="0", command=cswenter)
w.grid(row=5, column=1)
w = Button(root, height=2, width=15, text=">", command=cswright)
w.grid(row=5, column=2)
w = Button(root, height=2, width=15, text="HOME", command=cswhome)
w.grid(row=5, column=3)
w = Button(root, height=2, width=15, text="<<", command=cswleftrr)
w.grid(row=6, column=0)
w = Button(root, height=2, width=15, text="v", command=cswdown)
w.grid(row=6, column=1)
w = Button(root, height=2, width=15, text=">>", command=cswrightrr)
w.grid(row=6, column=2)
w = Button(root, height=2, width=15, text="MSM CCW", command=msmrotccw)
w.grid(row=6, column=3)

w = Label(root, height=2, width=15, text="")
w.grid(row=7, column=0)
w = Button(root, height=2, width=15, text="TCU On", command=activatetcu)
w.grid(row=8, column=0)
w = Button(root, height=2, width=15, text="Radio on", command=radioon)
w.grid(row=8, column=1)
w = Button(root, height=2, width=15, text="Radio off", command=radiooff)
w.grid(row=8, column=2)
w = Button(root, height=2, width=15, text="Speed on", command=speedon)
w.grid(row=9, column=0)
w = Button(root, height=2, width=15, text="Speed off", command=speedoff)
w.grid(row=9, column=1)


root.config(menu=menubar)
root.mainloop()
    
