import tkinter as tk

root = tk.Tk()

def start():
  os.system("alias process='$(pwd)/test.sh'")
  
B = tk.Button(root, text= "CLICK", command= start)
B.pack()
root.mainloop()
