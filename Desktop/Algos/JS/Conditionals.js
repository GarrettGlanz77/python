 //        if (condition) {            // what to do if condition is true
 //      }
 //       else if ( second_Condition) {             // can have 0 to many of these statements    
 //   // what to do if 2nd condition is true
 //       }
 //       else {                                  // can have 0 or 1 of these statements    
 //           // what to do if none of the previous conditions are met
 //       }

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////

var x = 25;
if (x > 50) {    
    console.log("bigger than 50");
}
else {    
    console.log("smaller than 50");
}
// because x is not greater than 50, the second print statement, "smaller than 50", is the only line that will execute




var x = 75;
if (x > 100) {    
    console.log("bigger than 100");
}
else if (x > 50) {    
    console.log("bigger than 50");
}
else if(x > 25) {
    console.log("bigger than 25");
}
else {    
    console.log("small number");
}
// because the first statement is not true, but the second is it will print "bigger than 50" to our console.  However, it won't even try to check our else if(x > 25) or else statements because it has already found something in the chain that is true.





 //               Operator	       Description	            Examples
 //            
 //               ==	              equal	            1 == 2 => false; 1 == 1 => true
 //             
 //               !=	            not equal	        1 != 2 => true; 1 != 1 => false
 //              
 //               >	              greater than	        1 > 2 => false; 2 > 1 => true
 //             
  //              <	               less than	        1 < 2 => true; 1 < 2 => false
  //            
 //               >=	     greater than or equal to	1 >= 2 => false; 2 >= 2 => true
 //            
  //             <=	          less than or equal to	    1 <= 2 => true; 2 <= 2 => true
