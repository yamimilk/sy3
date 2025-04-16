package cdu.zjy.aop;

import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
@Component
@Aspect
public class LogAspect {
    Logger logger;

    public LogAspect(){
        logger = LoggerFactory.getLogger(LogAspect.class);
    }

    @Pointcut("execution(* cdu.zjy.dao..add*(..))")
    public void pointcutAdd(){
    }

    @Pointcut("execution(* cdu.zjy.dao..mod*(..))")
    public void pointcutMod(){
    }

    @Pointcut("execution(* cdu.zjy.dao..del*(..))")
    public void  pointcutDel(){
    }

    @Pointcut("execution(* cdu.zjy.service.*.*(..))")
    public void pointcutService(){}

    @AfterReturning(value ="pointcutAdd() && args(obj)",
            returning = "result",argNames = "obj,result")
    public void afterAdd(Object obj,int result){
        System.out.println("AOP dao afterAdd:"+obj);
        logger.info("ADD:"+obj);
    }

    @AfterReturning(value = "pointcutMod() && args(obj)",
    returning = "result",argNames = "obj,result")
    public void afterMod(Object obj,int result){
        System.out.println("AOP dao afterMod:"+obj);
        logger.info("MOD:"+obj);
    }

    @AfterReturning(value="pointcutDel()&&args(id)",
                    returning = "result",argNames = "id,result")
    public void afterDel(int id,int result){
        System.out.println("AOP dao afterDel:id="+id);
        logger.info("DEL:id="+id);
    }

    @AfterThrowing(value = "pointcutService()",throwing="e")
    public void afterThrowing(Throwable e){
        System.out.println("AOP异常"+e.getMessage());
        logger.error("AOP异常"+e.getMessage());
    }

}
