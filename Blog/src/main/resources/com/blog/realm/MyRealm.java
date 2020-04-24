package com.blog.realm;

 import com.blog.entity.Blogger;
 import com.blog.service.BloggerService;
 import javax.annotation.Resource;
 import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
 import org.apache.shiro.authc.AuthenticationToken;
 import org.apache.shiro.authc.SimpleAuthenticationInfo;
 import org.apache.shiro.authz.AuthorizationInfo;
 import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.Session;
 import org.apache.shiro.subject.PrincipalCollection;
 import org.apache.shiro.subject.Subject;

public class MyRealm
  extends AuthorizingRealm
{
 @Resource
   private BloggerService bloggerService;
   
   protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals)
   {
     return null;
   }
  
   protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token)
     throws AuthenticationException
   {
     String userName = (String)token.getPrincipal();
     Blogger blogger = this.bloggerService.getByUserName(userName);
     if (blogger != null)
    {
       SecurityUtils.getSubject().getSession().setAttribute("currentUser", blogger);
       AuthenticationInfo authcInfo = new SimpleAuthenticationInfo(blogger.getUserName(), blogger.getPassword(), "xx");
       return authcInfo;
     }
    return null;
   }
}
