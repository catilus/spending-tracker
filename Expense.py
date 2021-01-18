class Expense:
    def __init__(self, name, date, price, category, recurrency):
        self.id = 1 # Needs to be a random number or autoattributed
        self.name = name
        self.date = date # by default it would be today
        self.price = price
        self.category = category
        self.recurrency = recurrency # Boolean