from stadiyumdao import stadiyumdao

def main():
	print "Welcome to Stadiyum"
	dao=stadiyumdao("stadiyum","stadiyum","xe")
	custom_id=None
	while custom_id==None:
		login=str(raw_input("Enter Login: "))
		password=str(raw_input("Enter Password: "))
		custom_id=dao.login(login,password)
		if custom_id ==None:
			print "Please Enter Valid Login"
	print ("Login Successful")
	stadium=str(raw_input("Search Stadium: "))
	stadium_list=dao.get_stadium(stadium)
	for i in range(len(stadium_list)):
		print stadium_list[i]
	stadium_id_valid=False
	while stadium_id_valid==False:
		stadium_id=int(raw_input("Please Select A Stadium: "))
		for i in range(len(stadium_list)):
			if stadium_list[i][0]==stadium_id:
				stadium_id_valid=True
				break
		if stadium_id_valid==False:
			print "Please Enter Valid Id"
	seat_number=str(raw_input("Please Enter Your Seat Number: "))
	dao.set_seat(custom_id,seat_number)
	vendor_bool=str(raw_input("Would you like to order (Y/N): "))
	if vendor_bool=='Y':
		vendor_list=dao.get_vendor(stadium_id)
		for i in range(len(vendor_list)):
			print vendor_list[i]
		vendor_id=int(raw_input("Enter Vendor Id: "))
		menu_list=dao.get_food(vendor_id)
		for i in range(len(menu_list)):
			print menu_list[i]
		menu_item=""
		menu_item_list=[]
		total_price=0
		print "Enter done when finished ordering"
		while menu_item != "done":
			total_menu_list=[]
			menu_item=str(raw_input("Enter Food Item Id : "))
			if menu_item == "done":
				break
			else:
				try:
					quantity=int(raw_input("Enter Quantity: "))
					price=dao.get_price(int(menu_item))[0]
					total_price=total_price+(price*quantity)
					total_menu_list.append(int(menu_item))
					total_menu_list.append(quantity)
					menu_item_list.append(total_menu_list)
					print "$"+str(total_price)
				except:
					print "Please Enter Valid Id"

		order_id=dao.set_order(custom_id,1,total_price)
		for i in range(len(menu_item_list)):
			try:
				dao.set_order_detail(menu_item_list[i][0],order_id,menu_item_list[i][1])
			except:
				print "Order Failed"
		print "Order Complete"
	else:
		print "Log back in when your ready to order"

main()