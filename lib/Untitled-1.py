from tkinter import *
from tkinter import messagebox
def click():
    name = e1.get()
    address = e2.get()
    year = e3.get()
    semester = e3.get()
    enrollment_date = e4.get()


    payment_method = radio.get()
    course = radio.get()


    if not (name and address and year and semester and enrollment_date and payment_method and course):
        messagebox.showwarning(title="Incomplete Information", message="Please fill up all the required information.")
    else:
        messagebox.showinfo(title="Successfully enrolled", message="Congratulations")
       
def compute_tuition():
    selected_course = radio.get()
    tuition_rates = {
        1: 15000,
        2: 20000,
        3: 16000,
        4: 13000,
        5: 22000,
        6: 12000,
    }
    if selected_course in tuition_rates:
        tuition_fee = tuition_rates[selected_course]
        tuition_result.config(text=f"Tuition Fee: ₱{tuition_fee:.2f}")
    else:
        tuition_result.config(text="Select a course to compute tuition")


root = Tk()
root.title("ENROLLMENT REGISTRATION")
root.geometry("800x500")
root.config(bg="#b09df2")
title = Label(root, text="Philippine College of Science and Technology", font=("Arial", 16, "bold"), fg="#7935de")
title.pack()


h1 = Label(root, text="Nalsian, Calasiao, Pangasinan", font=("Arial", 10, "bold"), fg="#7935de")
h1.pack()


h2 = Label(root, text="Enrollment Form", font=("Arial", 10, "bold"), fg="#7935de")
h2.pack()


h3 = Label(root, text="Student Information", font=("Arial", 10, "bold"), fg="black")
h3.place(x=0, y=100)


name_label = Label(root, text="Name:", font=("Arial", 10, "bold"), fg="black")
name_label.place(x=25, y=140)


e1 = Entry(root)
e1.place(x=160, y=140)


address_label = Label(root, text="Address:", font=("Arial", 10, "bold"), fg="black")
address_label.place(x=25, y=160)


e2 = Entry(root)
e2.place(x=160, y=160)


semester_label = Label(root, text="Year:", font=("Arial", 10, "bold"), fg="black")
semester_label.place(x=25, y=180)


e3 = Entry(root)
e3.place(x=160, y=180)


semester_label = Label(root, text="Semester:", font=("Arial", 10, "bold"), fg="black")
semester_label.place(x=25, y=200)


e3 = Entry(root)
e3.place(x=160, y=200)


course_label = Label(root, text="Date of Enrollment:", font=("Arial", 10, "bold"), fg="black")
course_label.place(x=25, y=220)


e4 = Entry(root)
e4.place(x=160, y=220)




payment_method_label = Label(root, text="Payment Method:", font=("Arial", 10, "bold"), fg="black")
payment_method_label.place(x=25, y=280)


radio = IntVar()


r1 = Radiobutton(root, text="Cash", variable=radio, value=1)
r1.pack()
r1.place(x=160, y=280)


r2 = Radiobutton(root, text="Installment", variable=radio, value=2)
r2.pack()
r2.place(x=250, y=280)


h5 = Label(root, text="Available Courses:", font=("Arial", 10, "bold"), fg="black")
h5.place(x=450, y=100)


radio = IntVar()


r3 = Radiobutton(root, text="CSS/IT", variable=radio, value=1)
r3.pack()
r3.place(x=450, y=120)


r4 = Radiobutton(root, text="MARINE", variable=radio, value=2)
r4.pack()
r4.place(x=450, y=140)


r5 = Radiobutton(root, text="EDUCATION", variable=radio, value=3)
r5.pack()
r5.place(x=450, y=160)


r6 = Radiobutton(root, text="TOURISM", variable=radio, value=4)
r6.pack()
r6.place(x=450, y=180)


r7 = Radiobutton(root, text="ENGINEERING", variable=radio, value=5)
r7.pack()
r7.place(x=450, y=200)


r8 = Radiobutton(root, text="CRIMINOLOGY", variable=radio, value=6)
r8.pack()
r8.place(x=450, y=220)


compute_button = Button(root, text="Compute Tuition", command=compute_tuition,font=("Arial", 10, "bold"))
compute_button.place(x=450, y=300)


button = Button(root, text="Done", command=click,font=("Arial", 10, "bold"))
button.place(x=450, y=450)


tuition_result = Label(root, text="", font=("Arial", 10, "bold"), fg="black")
tuition_result.place(x=450, y=360)


root.mainloop()