package com.irctc.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.Random;

import com.irctc.model.Booking;
import com.irctc.model.User;
import com.irctc.dbconn.*;

public class UserDAO {
	public boolean isUsernameAvailable(String username) throws SQLException {
		String sql = "SELECT COUNT(*) FROM master WHERE username = ?";
		try (Connection conn = DatabaseUtil.getConnection(); PreparedStatement stmt = conn.prepareStatement(sql)) {
			stmt.setString(1, username);
			try (ResultSet rs = stmt.executeQuery()) {
				if (rs.next()) {
					return rs.getInt(1) == 0;
				}
			}
		}
		return false;
	}

	public void saveUser(User user) throws SQLException {
		String sql = "INSERT INTO master (username, password, language, security_question, security_answer) VALUES (?, ?, ?, ?, ?)";
		try (Connection conn = DatabaseUtil.getConnection();
				PreparedStatement stmt = conn.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS)) {
			stmt.setString(1, user.getUsername());
			stmt.setString(2, user.getPassword());
			stmt.setString(3, user.getLanguage());
			stmt.setString(4, user.getSecurityQuestion());
			stmt.setString(5, user.getSecurityAnswer());
			stmt.executeUpdate();

			try (ResultSet generatedKeys = stmt.getGeneratedKeys()) {
				if (generatedKeys.next()) {
					user.setId(generatedKeys.getInt(1));
				}
			}
		}
	}

	public void savePersonalDetails(User user) throws SQLException {
		String sql = "update master SET fname = ?, mname = ?, lname = ?, occupation = ?, dateofbirth = ?, marital_status = ?, gender = ?, email = ?, isd = ?, mobile = ?, nationality = ? WHERE id = ?";
		try (Connection conn = DatabaseUtil.getConnection(); PreparedStatement stmt = conn.prepareStatement(sql)) {
			stmt.setString(1, user.getfName());
			stmt.setString(2, user.getmName());
			stmt.setString(3, user.getlName());
			stmt.setString(4, user.getOccupation());
			stmt.setDate(5, java.sql.Date.valueOf(user.getDateOfBirth()));
			stmt.setString(6, user.getMaritalStatus());
			stmt.setString(7, user.getGender());
			stmt.setString(8, user.getEmail());
			stmt.setInt(9, user.getIsd());
			stmt.setLong(10, user.getMobile());
			stmt.setString(11, user.getNationality());
			stmt.setInt(12, user.getId());
			stmt.executeUpdate();
		}
	}

	public void saveAddressDetails(User user) throws SQLException {
		String sql = "UPDATE master SET floor = ?, street = ?, area = ?, pin = ?, city = ?, state = ?, post_office = ?, copy_residence = ?, inform_about_credit_card = ? WHERE id = ?";
		try (Connection conn = DatabaseUtil.getConnection(); PreparedStatement stmt = conn.prepareStatement(sql)) {
			stmt.setString(1, user.getFloor());
			stmt.setString(2, user.getStreet());
			stmt.setString(3, user.getArea());
			stmt.setString(4, user.getPin());
			stmt.setString(5, user.getCity());
			stmt.setString(6, user.getState());
			stmt.setString(7, user.getPostOffice());
			stmt.setString(8, user.getCopyResidence());
			stmt.setString(9, user.getInformAboutCreditCard());
			stmt.setInt(10, user.getId());
			stmt.executeUpdate();
		}
	}

	public int saveBooking(int userId, String from, String to, String travelClass, String travelDate,
			boolean disability, boolean flexible, boolean availableBerth, boolean pass) throws SQLException {
		String sql = "INSERT INTO bookings (user_id, departure_station, destination_station, ticket_class, travel_date, "
				+ "disability_concession, flexible_with_date, train_with_available_berth, railway_pass_concession, booking_time, PNR_Status) "
				+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

		try (Connection conn = DatabaseUtil.getConnection();
				PreparedStatement stmt = conn.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS)) {
			String pnrCode = generatePNRCode();
			stmt.setInt(1, userId);
			stmt.setString(2, from);
			stmt.setString(3, to);
			stmt.setString(4, travelClass);
			stmt.setString(5, travelDate);
			stmt.setString(6, disability ? "yes" : "no");
			stmt.setString(7, flexible ? "yes" : "no");
			stmt.setString(8, availableBerth ? "yes" : "no");
			stmt.setString(9, pass ? "yes" : "no");
			stmt.setTime(10, java.sql.Time.valueOf(LocalTime.now()));
			stmt.setString(11, pnrCode);

			int rowsAffected = stmt.executeUpdate();

			if (rowsAffected == 0) {
				throw new SQLException("Creating booking failed, no rows affected.");
			}

			try (ResultSet generatedKeys = stmt.getGeneratedKeys()) {
				if (generatedKeys.next()) {
					return generatedKeys.getInt(1);
				} else {
					throw new SQLException("Creating booking failed, no ID obtained.");
				}
			}
		}
	}

	private String generatePNRCode() {
		int leftLimit = 49;
		int rightLimit = 57;
		int targetStringLength = 10;
		Random random = new Random();
		StringBuilder buffer = new StringBuilder(targetStringLength);
		for (int i = 0; i < targetStringLength; i++) {
			int randomLimitedInt = random.nextInt(rightLimit - leftLimit) + leftLimit;
			buffer.append((char) randomLimitedInt);
		}
		return buffer.toString();
	}

	public Booking getBookingById(int bookingId) throws SQLException {
		String sql = "SELECT * FROM bookings WHERE booking_id = ?";
		try (Connection conn = DatabaseUtil.getConnection(); PreparedStatement stmt = conn.prepareStatement(sql)) {
			stmt.setInt(1, bookingId);
			try (ResultSet rs = stmt.executeQuery()) {
				if (rs.next()) {
					Booking booking = new Booking();
					booking.setId(rs.getInt("booking_id"));
					booking.setUserId(rs.getInt("user_id"));
					booking.setFromStation(rs.getString("departure_station"));
					booking.setToStation(rs.getString("destination_station"));
					booking.setTravelClass(rs.getString("ticket_class"));
					booking.setTravelDate(rs.getDate("travel_date"));
					booking.setDisabilityConcession(rs.getString("disability_concession").equals("yes"));
					booking.setFlexibleWithDate(rs.getString("flexible_with_date").equals("yes"));
					booking.setTrainWithAvailableBerth(rs.getString("train_with_available_berth").equals("yes"));
					booking.setRailwayPassConcession(rs.getString("railway_pass_concession").equals("yes"));
					booking.setBookingTime(rs.getTime("booking_time"));
					return booking;
				} else {
					throw new SQLException("No booking found with ID: " + bookingId);
				}
			}
		}
	}

	public User validateUser(String username, String password) throws SQLException {
		String sql = "SELECT * FROM master WHERE username = ? AND password = ?";
		try (Connection conn = DatabaseUtil.getConnection(); PreparedStatement stmt = conn.prepareStatement(sql)) {
			stmt.setString(1, username);
			stmt.setString(2, password);
			try (ResultSet rs = stmt.executeQuery()) {
				if (rs.next()) {
					User user = new User();
					user.setId(rs.getInt("id"));
					user.setUsername(rs.getString("username"));
					user.setPassword(rs.getString("password"));
					return user;
				} else {
					return null;
				}
			}
		}
	}

	public User getUserById(int userId) throws SQLException {
		String sql = "SELECT * FROM master WHERE id = ?";
		try (Connection conn = DatabaseUtil.getConnection(); PreparedStatement stmt = conn.prepareStatement(sql)) {
			stmt.setInt(1, userId);
			try (ResultSet rs = stmt.executeQuery()) {
				if (rs.next()) {
					User user = new User();
					user.setId(rs.getInt("id"));
					user.setUsername(rs.getString("username"));
					user.setPassword(rs.getString("password"));
					user.setfName(rs.getString("fname"));
					user.setmName(rs.getString("mname"));
					user.setlName(rs.getString("lname"));
					user.setOccupation(rs.getString("occupation"));
					user.setDateOfBirth(rs.getString("dateofbirth"));
					user.setMaritalStatus(rs.getString("marital_status"));
					user.setGender(rs.getString("gender"));
					user.setEmail(rs.getString("email"));
					user.setIsd(rs.getInt("isd"));
					user.setMobile(rs.getLong("mobile"));
					user.setNationality(rs.getString("nationality"));
					user.setFloor(rs.getString("floor"));
					user.setStreet(rs.getString("street"));
					user.setArea(rs.getString("area"));
					user.setPin(rs.getString("pin"));
					user.setCity(rs.getString("city"));
					user.setState(rs.getString("state"));
					user.setPostOffice(rs.getString("post_office"));
					user.setCopyResidence(rs.getString("copy_residence"));
					user.setInformAboutCreditCard(rs.getString("inform_about_credit_card"));
					return user;
				} else {
					throw new SQLException("No user found with ID: " + userId);
				}
			}
		}
	}

	public Booking getLatestBookingByUserId(int userId) throws SQLException {
		String sql = "SELECT * FROM bookings WHERE user_id = ? ORDER BY booking_date DESC LIMIT 1";
		try (Connection conn = DatabaseUtil.getConnection(); PreparedStatement stmt = conn.prepareStatement(sql)) {
			stmt.setInt(1, userId);
			try (ResultSet rs = stmt.executeQuery()) {
				if (rs.next()) {
					Booking booking = new Booking();
					booking.setId(rs.getInt("id"));
					booking.setUserId(rs.getInt("user_id"));
					booking.setFromStation(rs.getString("from_station"));
					booking.setToStation(rs.getString("to_station"));
					booking.setTravelClass(rs.getString("travel_class"));
					return booking;
				} else {
					throw new SQLException("No booking found for user ID: " + userId);
				}
			}
		}
	}
	
	public String getLastPNRNumber() throws SQLException {
        String sql = "SELECT PNR_Status FROM bookings ORDER BY booking_id DESC LIMIT 1";
        String lastPNR = null;

        try (Connection conn = DatabaseUtil.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            if (rs.next()) {
                lastPNR = rs.getString("PNR_Status");
            }
        }

        return lastPNR;
    }

}
