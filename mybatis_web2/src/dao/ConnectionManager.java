package dao;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class ConnectionManager {
	private static ConnectionManager manager = null;
	private static SqlSessionFactory factory = null;
	
	private ConnectionManager() {}
	
	public static ConnectionManager getInstance() {
		if(manager == null) {
			manager = new ConnectionManager();
		}
		
		return manager;
	}
	
	public static SqlSessionFactory getFactory() {
		if(factory == null) {
			Reader r;
			
			try {
				r = Resources.getResourceAsReader("config/SqlMapConfig.xml");
				
				SqlSessionFactoryBuilder ssfb = new SqlSessionFactoryBuilder();
				factory = ssfb.build(r);
				
				r.close();
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return factory;
	}
}
