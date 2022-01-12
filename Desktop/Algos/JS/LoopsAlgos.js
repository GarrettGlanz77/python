// For loops

// logs number 0-14

for(var num = 0; num < 15; num++){
    console.log(num);
}

// if i is divisible by three and has a remainder of 0, the i must be 3,9

for(var i =1; i < 10; i+= 2 ) {
    if(i % 3 == 0){
        console.log(i);
    }
}

// j is divisible by 2 with a remainder of 0, so it logs: 1,4,8

for(var j = 1; j < 10; j+=2){
    if(j % 2 == 0){
        j+=2;
    }
    else if(j % 3 == 0){
        j++;
    }
    console.log(j);
}

// While loops

var num = 0;    // start a variable at 0
while (num <= 5) {        
    console.log(num);    // print the current value of num        
    num=num+1;       // increment num by 1
}




