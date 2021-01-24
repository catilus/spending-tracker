class Expense:
    
    # Attributes have default values
    def __init__(self, name, date='today', price=5.00, category='Groceries', recurrence=False, user):
        self.name = name
        self.date = date 
        self.price = price
        self.category = category
        self.recurrence = recurrence
        self.user = user