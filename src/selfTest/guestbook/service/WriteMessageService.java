package selfTest.guestbook.service;

import java.sql.Connection;
import java.sql.SQLException;

import selfTest.guestbook.dao.MessageDao;
import selfTest.guestbook.model.Message;
import selfTest.jdbc.JdbcUtil;
import selfTest.jdbc.connection.ConnectionProvider;

public class WriteMessageService {
	
	private static WriteMessageService instance = new WriteMessageService();
	
	public static WriteMessageService getInstance() {
		return instance;
	}
	
	private WriteMessageService() {	
	}
	
	public void write(Message message) {
		if (message.getGuestName() == null || message.getGuestName().isEmpty()) {
			throw new IllegalArgumentException("invalid guest name");
		} else if (message.getPassword() == null || message.getPassword().isEmpty()) {
			throw new IllegalArgumentException("암호가 지정되어 있지 않음");
		}
		
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			MessageDao messageDao = MessageDao.getInstance();
			messageDao.insert(conn, message);
		} catch (SQLException e) {
			throw new ServiceException("메시지 등록 실패: " + e.getMessage());
		} finally {
			JdbcUtil.close(conn);
		}
	}

}
