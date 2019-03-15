import com.lq.model.Products;
import com.lq.model.User;
import com.lq.service.PetService;
import com.lq.service.UserService;
import com.lq.util.PageBean;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
* 用户操作测试类
*
* @author zhushuai
* 创建日期 2019/2/12
* @since
*/
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations ={"classpath:spring/applicationContext.xml"})
public class UserMapperTest {

    @Autowired
    UserService userService;
    @Autowired
    PetService petService;
    @Test
    public void queryUserInfoTest(){
        String username="11";
            String password="11";
        User user=userService.queryUserInfo(username,password);
        System.out.println(username+"    "+user);


        PageBean<Products> a=petService.queryProductByPage(1,3,"1");
    }


}
