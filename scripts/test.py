from Tkinter import *
import tkMessageBox
import ttk
# import Tkinter       Duplicate import
 
def myListbox():
    top = Toplevel()
    top.title('This is it!')
    top.geometry('200x150+200+150')
 
    list_of_names=["Aileen", "Hazel", "Rubie"]
    Lb1 = Listbox(top)
    for ctr, name in enumerate(list_of_names):
         Lb1.insert(ctr, name)
    Lb1.pack()
 
    ## simulate "Hazel" was selected
    Lb1.itemconfig(1, background="lightgray")
    top.mainloop() 
 
def quitter():
    if tkMessageBox.askokcancel('Verify Exit', 'Are you sure you want to quit?'):
        quit()
 
app=Tk()
app.title('My Tkinter')
app.geometry('400x300+400+300')
 
button1=Button(app, text=' Listbox ', bg='white', fg='red',width=20, command=myListbox)
buttonfont=('georgia',12,'bold')
button1.config(font=buttonfont)
button1.pack(side='top',padx=35, pady=55)
 
button1=Button(app, text='Logout', bg='maroon', fg='white',width=20, relief=RAISED, command=quitter)
buttonfont=('georgia',12,'bold')
button1.config(font=buttonfont)
button1.pack(side='bottom', padx=15,pady=15)
 
app.mainloop() 
