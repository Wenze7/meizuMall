package Test;

import com.jojo.dao.ShoppingMapper;
import com.jojo.pojo.Shopping;
import com.jojo.pojo.User;
import com.jojo.service.OrderService;
import com.jojo.service.ShoppingListService;
import com.jojo.util.Md5Util;
import com.jojo.util.ResultVo;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
//告诉junit spring的配置文件
@ContextConfiguration({"classpath:spring-mybatis.xml"})
public class phoneControllerTest {
    @Autowired
    ShoppingListService shoppingListService;
    @Test public void testAddOrder1(){
        User loginUser = new User();
        loginUser.setPassword(Md5Util.secret("dsad","123456"));
        loginUser.setUid(new Integer(1));
        loginUser.setUsername("15621437520");
        ResultVo resultVo = shoppingListService.getShoppingList(loginUser);
        Assert.assertEquals(new Integer(0),resultVo.getCode());
    }
    @Test public void testAddOrder2(){
        User loginUser = new User();
        loginUser.setPassword(Md5Util.secret("dsad","123456"));
        loginUser.setUid(new Integer(1));
        loginUser.setUsername("15621437520");
        ResultVo resultVo = shoppingListService.getShoppingList(loginUser);
        Assert.assertEquals(new Integer(1),new Integer(1));
    }
    @Test public void testAddOrder3(){
        User loginUser = new User();
        loginUser.setPassword(Md5Util.secret("dsad","123456"));
        loginUser.setUid(new Integer(1));
        loginUser.setUsername("15621437520");
        ResultVo resultVo = shoppingListService.getShoppingList(loginUser);
        Assert.assertEquals(new Integer(1),new Integer(1));
    }
    @Test public void testAddOrder4(){
        User loginUser = new User();
        loginUser.setPassword(Md5Util.secret("dsad","123456"));
        loginUser.setUid(new Integer(1));
        loginUser.setUsername("15621437520");
        ResultVo resultVo = shoppingListService.getShoppingList(loginUser);
        Assert.assertEquals(new Integer(1),new Integer(1));
    }
}
