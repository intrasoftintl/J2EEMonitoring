package com.aop;

import com.DAO.AddMeasurementDAO;
import java.util.Arrays;
import org.aopalliance.intercept.MethodInterceptor;
import org.aopalliance.intercept.MethodInvocation;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;


 
/*
aspects for logging execution times.
The aspcet measures the time and adds the measurement to a database
Logic for handling the database (obtain measurements and sanitize data) is deferred to the calling objects.
WARNING: Temporary measurements are *not* erased.
*/
public class AOPAroundMethod implements MethodInterceptor {    
        private Log log = LogFactory.getLog(this.getClass());
        
	@Override
	public Object invoke(MethodInvocation methodInvocation) throws Throwable {
 
		//System.out.println("Method name : "
		//		+ methodInvocation.getMethod().getName());
		//System.out.println("Method arguments : "
		//		+ Arrays.toString(methodInvocation.getArguments()));
 
		// same with MethodBeforeAdvice
		System.out.println("HijackAroundMethod : Before method hijacked!");
                long startTime = System.currentTimeMillis();
		try {
			// proceed to original method call
			Object result = methodInvocation.proceed();
 
			// same with AfterReturningAdvice
			System.out.println("HijackAroundMethod : Before after hijacked!");
                        long estimatedTime  = System.currentTimeMillis()- startTime;
                        System.out.println("Ellapsed time: " + estimatedTime);
                        AddMeasurementDAO.addMeasurement((int) estimatedTime);
			return result;
 
		} catch (IllegalArgumentException e) {
			// same with ThrowsAdvice
			System.out.println("HijackAroundMethod : Throw exception hijacked!");
			throw e;
		}
	}
}
