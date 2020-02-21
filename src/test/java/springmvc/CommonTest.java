package springmvc;

import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.accp.springmvc.biz.CheckBiz;
import com.accp.springmvc.biz.EmployeeBiz;
import com.accp.springmvc.biz.LeaveBiz;
import com.accp.springmvc.biz.ReimburseBiz;
import com.accp.springmvc.pojo.Detail;
import com.accp.springmvc.pojo.Leave;
import com.accp.springmvc.vo.ReimburseCheckVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:spring-ctx.xml"})
public class CommonTest {
	@Autowired
	private EmployeeBiz biz;
	
	@Autowired
	private LeaveBiz biz1;
	@Autowired
	private CheckBiz biz2;
	@Autowired
	private ReimburseBiz biz3;
	
	@Test
	public void login() {
		/* System.out.println(biz.login(1005, "aaa12345")); */
		/*
		 * biz1.querybyid(1).forEach(temp->{ System.out.println(temp); });
		 */
		/* System.out.println(biz2.querybyid(20)); */
		/*
		 * biz3.querybyid(1004,3).forEach(temp->{
		 * 
		 * System.out.println(temp); });
		 */
		/*
		 * Random random = new Random(); DecimalFormat df = new DecimalFormat("00");
		 * String no = new SimpleDateFormat("yyyyMMddHHmmss") .format(new Date()) +
		 * df.format(random.nextInt(100)); Date date=new Date();
		 * System.out.println(no+date);
		 */
		/*
		 * System.out.println(biz3.select(212152142).getReimburse());
		 * biz3.select(212152142).getDetails().forEach(temp->{ System.out.println(temp);
		 * });
		 */
		/*
		 * biz3.querydetail(2119179).getDetails().forEach(temp->{
		 * System.out.println(temp); });
		 */
		/* biz3.removedetail(2119179); */
		/* biz3.modify(2119179, 1); */
		ReimburseCheckVo rei=biz3.selectche(1);
		System.out.println(rei.getReimburse());
		rei.getDetails().forEach(temp->{
			System.out.println(temp);
			
		});
		rei.getChecks().forEach(temp ->{
			System.out.println(temp);
		});
		
		
		
	}
	@Test
	public void add() {
		try {
			System.out.println(biz1.addleave(new Leave(1, 1005, 3, new SimpleDateFormat("yyyy-MM-dd").parse("2019-01-01"), new SimpleDateFormat("yyyy-MM-dd").parse("2019-01-02"),new SimpleDateFormat("yyyy-MM-dd").parse("2019-01-03"), 1004, "生病了", 1, 1)));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
