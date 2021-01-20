class Expense:
    
    # Attributes have default values
    def __init__(self, name, date='today', price=5.00, category='Groceries', recurrency=False):
        self.id = 21432894320 # Needs to be a random number or autoattributed
        self.name = name
        self.date = date 
        self.price = price
        self.category = category
        self.recurrency = recurrency