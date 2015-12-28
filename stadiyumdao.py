

import cx_Oracle

class stadiyumdao(object):
    """docstring for stadiyumdao"""
    def __init__(self, dbname="stadiyum", password="a", extension="xe"):
        self.dbname=dbname
        self.password=password
        self.extension=extension

    def login(self,log_name,password):
        con=cx_Oracle.connect(self.dbname, self.password, self.extension)
        cur=con.cursor()
        cur.prepare('SELECT CUSTOMER_ID FROM CUSTOMER WHERE login=:login AND password=:password')
        cur.execute(None,{'login':log_name,'password':password})
        cust_id=cur.fetchall()[0][0]
        if cust_id==[]:
            cur.close()
            con.close()
            return None
        else:
            cur.close()
            con.close()
            return cust_id

    def set_seat(self,customer_id, seat_number):
        con=cx_Oracle.connect(self.dbname, self.password, self.extension)
        cur=con.cursor()
        cur.prepare('UPDATE SEAT SET CUSTOMER_ID=:customer_id WHERE SEAT_NUMBER=:seat')
        cur.execute(None,{'customer_id':customer_id,'seat':seat_number})
        con.commit()
        cur.close()
        con.close()
        
    def get_stadium(self,stadium_search_string):
        con=cx_Oracle.connect(self.dbname,self.password, self.extension)
        cur=con.cursor()
        prepare_string='%'+stadium_search_string+'%'
        cur.prepare('SELECT STADIUM_ID, STADIUM_NAME FROM STADIUM WHERE STADIUM_NAME LIKE :search')
        cur.execute(None,{'search':prepare_string})
        result=cur.fetchall()
        if result==[]:
            cur.close()
            con.close()
            return None
        else:
            cur.close()
            con.close()
            return result

    def get_vendor(self, stadium_id):
        con=cx_Oracle.connect(self.dbname,self.password, self.extension)
        cur=con.cursor()
        cur.prepare('SELECT VENDOR_ID, VENDOR_NAME FROM VENDOR WHERE STADIUM_ID=:stad_id')
        cur.execute(None,{'stad_id':stadium_id})
        result=cur.fetchall()
        if result==[]:
            cur.close()
            con.close()
            return None
        else:
            cur.close()
            con.close()
            return result

    def get_food(self, vendor_id):
        con=cx_Oracle.connect(self.dbname,self.password, self.extension)
        cur=con.cursor()
        cur.prepare('SELECT MENU_ITEM_ID, MENU_ITEM_NAME, MENU_ITEM_PRICE FROM MENU_ITEM WHERE VENDOR_ID=:ven_id')
        cur.execute(None,{'ven_id':vendor_id})
        result=cur.fetchall()
        if result==[]:
            cur.close()
            con.close()
            return None
        else:
            cur.close()
            con.close()
            return result
    def get_price(self, menu_item_id):
        con=cx_Oracle.connect(self.dbname,self.password, self.extension)
        cur=con.cursor()
        cur.prepare('SELECT menu_item_price FROM MENU_ITEM WHERE MENU_ITEM_ID=:menu_item_id')
        cur.execute(None,{'menu_item_id':menu_item_id})
        price=cur.fetchall()[0]
        cur.close()
        con.close()
        return price

    def set_order(self, customer_id, courier_id, total_price):
        con=cx_Oracle.connect(self.dbname,self.password,self.extension)
        cur=con.cursor()
        cur.prepare('SELECT order_id_seq.NEXTVAL FROM dual')
        cur.execute(None,{})
        order=cur.fetchall()[0]
        cur.prepare('INSERT INTO ORDERS (orders_id, total_price, customer_id, courier_id) VALUES (:order_id,:total_price,:customers_id,:courier_id)')
        cur.execute(None, {'order_id':order[0],'total_price':total_price,'customers_id':customer_id,'courier_id':courier_id})
        con.commit()
        cur.close()
        con.close()
        return order[0]

    def set_order_detail(self, menu_item_id, order_id, quantity):
        con=cx_Oracle.connect(self.dbname,self.password,self.extension)
        cur=con.cursor()
        cur.prepare('INSERT INTO ORDER_DETAILS (menu_item_id, orders_id, quantity) VALUES (:menu_item_id,:order_id,:quantity)')
        cur.execute(None,{'menu_item_id':menu_item_id,'order_id':order_id,'quantity':quantity})
        con.commit()
        cur.close()
        con.close()

# # Insert fumction for Customer table
# def insert_query(cur, rows):
#     con = cx_Oracle.connect('stadiyum', 'stadiyum', 'xe')
#     cur = con.cursor()
#     for items in rows:
#         cur.execute('insert into test (customer_id, last_name, first_name) values (:customer_id, :last_name, :first_name)', 
#             {'customer_id':items[0], 'last_name':items[1], 'first_name':items[2]})
#     con.commit()

# # Select fumction for Payment table
# def retrieve_query(cur, payment_amount):
#     con = cx_Oracle.connect('stadiyum', 'stadiyum', 'xe')
#     cur = con.cursor()
#     cur.prepare('select * from payment where payment_amount = :payment_amount')
#     cur.execute(None, {'payment_amount': payment_amount})
#     return cur.fetchone()

# # Update function for Status table
# def update_query(cur, last_name, customer_id):
#     con = cx_Oracle.connect('stadiyum', 'stadiyum', 'xe')
#     cur = con.cursor()
#     cur.prepare('update test set last_name = :last_name where customer_id = :customer_id')
#     cur.execute(None, {'last_name':last_name, 'customer_id':customer_id})
#     con.commit()

# # Delete function for Courier table
# def delete_query(cur, customer_id):
#     con = cx_Oracle.connect('stadiyum', 'stadiyum', 'xe')
#     cur = con.cursor()
#     cur.prepare('delete from test where customer_id = :customer_id')
#     cur.execute(None, {'customer_id':customer_id})
#     con.commit()

# # Select all fumction
# def show_rows(cur):
#     con = cx_Oracle.connect('stadiyum', 'stadiyum', 'xe')
#     cur = con.cursor()
#     cursor = cur.execute('select * from test order by customer_id')
#     for row in cursor:
#         print('  {}: {} {}'.format(row[0], row[1], row[2]))

# # Select fumction for Payment table
# def retrieve_query_insert(cur):
#     con = cx_Oracle.connect('stadiyum', 'stadiyum', 'xe')
#     cur = con.cursor()
#     cursor = cur.execute('select payment_amount from payment')
#     for row in cursor:
#         print('  {}'.format(row[0]))


# def main():
#     con = cx_Oracle.connect('stadiyum', 'stadiyum', 'xe')
#     cur = con.cursor()

#     cur.execute('create table test (customer_id number primary key, last_name varchar2(50) not null, first_name varchar(50) not null)')

#     insert_query(cur, [(1, 'Richardson', 'Steve')])
#     insert_query(cur, [(2, 'Smith', 'Jewel')])
#     insert_query(cur, [(3, 'Brow', 'Matt')])
#     insert_query(cur, [(4, 'Dickerson', 'John')])
#     show_rows(cur)

#     #print('Retrieve records')
#     #print(retrieve_query (cur, 12.32))

#     #print('Update rows')
#     #update_query(cur, 'Williams', 1)
#     #update_query(cur, 'Williams', 1)
#     #show_rows(cur)

#     #print('Delete records')
#     #delete_query(cur, 1)
#     #delete(cur, 2)
#     #show_rows(cur)

#     #retrieve_query_insert(cur)

#     cur.close()
#     con.close()  

# if __name__ == "__main__": main()