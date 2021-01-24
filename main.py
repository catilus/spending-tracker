## INSTALLATION
# pip install peewee



from Expense import *

first_expense = Expense(name='Home Depot', price='0.78')
second_expense = Expense(name='Verizon', price=76.32, recurrency=True)
print(first_expense.name, first_expense.price, first_expense.recurrency)
print(second_expense.name, second_expense.price, second_expense.recurrency)
