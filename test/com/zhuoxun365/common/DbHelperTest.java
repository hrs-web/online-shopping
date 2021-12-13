package com.zhuoxun365.common;

import com.shop.common.DbHelper;
import com.shop.entity.News;
import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.Connection;
import java.util.Date;

/**
 * DbHelper单元测试类
 * @author Administrator
 *
 */
public class DbHelperTest {
	
	public static void main(String[] args) {

		QueryRunner qr = new QueryRunner();
		BeanHandler<News> beanHandler = new BeanHandler<News>(News.class);
		ScalarHandler<Long> scalarHandler = new ScalarHandler<Long>();
		BeanListHandler<News> beanListHandler = new BeanListHandler<News>(News.class);
		Date param1 = new java.sql.Date(new Date().getTime());
		String sql = "UPDATE address SET contact=?,mobile=?,street=?,zipcode=?,default_value=?,mbr_id=? WHERE id=?";

		Object[] params = { "测试123123", "1234343",
				"广东省深圳市1231", "1234563245",1
				, 12,8
		};

		System.out.println(sql);
		Connection conn = null;
		try{
			conn = DbHelper.getConn(); //获取数据库连接
			conn.setAutoCommit(false); //开启事务

			//执行数据库的更新操作
			qr.update(conn, sql, params);

			DbUtils.commitAndCloseQuietly(conn); //提交事务并关闭连接
		}catch(Exception e){
			DbUtils.rollbackAndCloseQuietly(conn); //回滚事务并关闭连接

			throw new RuntimeException(e);
		}
		/*DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:s.SSS");
		String format = df.format(new Date());
		System.out.println(format);*/
	}
}
