package com.VAANI.model;

import javax.persistence.*;

@Entity

@Table(name="login")

public class LoginVO
	{
		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
		@Column(name="loginId")
		private int loginId;
		
		@Column(name="username")
		private String username;		
		
		@Column(name="password")
		private String password;
		
		@Column(name="enabled")
		private int enabled;
		
		@Column(name="role")
		private String role;

		public int getLoginId() {
			return loginId;
		}

		public void setLoginId(int loginId) {
			this.loginId = loginId;
		}

		public String getUsername() {
			return username;
		}

		public void setUsername(String username) {
			this.username = username;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public int getEnabled() {
			return enabled;
		}

		public void setEnabled(int enabled) {
			this.enabled = enabled;
		}

		public String getRole() {
			return role;
		}

		public void setRole(String role) {
			this.role = role;
		}
		
	}