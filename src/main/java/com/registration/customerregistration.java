package com.registration;

public class customerregistration {
	
	
		private int id;
		private String fname;
		private String lname;
		private String email;
		private String phonenumber;
		private String password;
		public customerregistration(int id, String fname, String lname, String email, String phonenumber,
				String password) {
			
			this.id = id;
			this.fname = fname;
			this.lname = lname;
			this.email = email;
			this.phonenumber = phonenumber;
			this.password = password;
		}
		public int getId() {
			return id;
		}
		
		public String getFname() {
			return fname;
		}
		
		public String getLname() {
			return lname;
		}
	
		public String getEmail() {
			return email;
		}
		
		public String getPhonenumber() {
			return phonenumber;
		}
		
		public String getPassword() {
			return password;
		}
	
	

}
