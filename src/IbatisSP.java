import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

public class IbatisSP {
	public static void main(String[] args) throws IOException, SQLException {
		Reader rd = Resources.getResourceAsReader("SqlMapConfig.xml");
		SqlMapClient smc = SqlMapClientBuilder.buildSqlMapClient(rd);
		int id = 1;
		System.out.println("Going to read employee name.....");
		Employee e = (Employee) smc.queryForObject("Employee.getEmpInfo", id);
		System.out.println("First Name:  " + e.getFirstName());
		System.out.println("Record name Successfully ");
	}
}