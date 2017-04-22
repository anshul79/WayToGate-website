<%-- 
    Document   : Test
    Created on : 25 Nov, 2014, 12:18:38 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="noindex, nofollow">
	<title> GATE ONLINE PRACTICE - COMPUTER SCIENCE</title>
	
	<link rel="stylesheet" type="text/css" href="css/style.css" />

</head>

<body>


	<div id="page-wrap">
<div id="count">

    <h1><U>GATE ONLINE MOCK TEST </U> </h1><br>
           
   <% 
    HttpSession ses=request.getSession(false);
    if(ses==null||ses.getAttribute("Uname")==null){
        out.println("Session expired.Retry.");
        out.println("<a href=home.jsp>Home</a>");
    }
    else{
     out.println("Hello "+(String)ses.getAttribute("Uname")+"!");
     

       //  String u=(String)ses.getAttribute("Uname");
        // out.println("Hello "+u+"!");
    }
     %>   
        
        
    <br><br>
    TIMER:
                        <div id="countdown"></div> 
                        <div id="notifier"></div>
<script type="text/javascript">

  function display( notifier, str ) {
    document.getElementById(notifier).innerHTML = str;
  }
        
  function toMinuteAndSecond( x ) {
    return Math.floor(x/60) + ":" + x%60;
  }
        
  function setTimer( remain, actions ) {
    (function countdown() {
       display("countdown", toMinuteAndSecond(remain));         
       actions[remain] && actions[remain]();
       (remain -= 1) >= 0 && setTimeout(arguments.callee, 1000);
    })();
  }

  setTimer(1200, {
    900: function () { display("notifier", "Just 15 minutes to go"); },
    600: function () { display("notifier", "Just 10 minutes to go"); },
    300: function () { display("notifier", "Just 5 minutes to go"); },
     5: function () { display("notifier", "5 seconds left");        },
     0: function () { display("notifier", "Time is up");       }
  });   

 </script><br>
</div>	<div id="count1" style="width:1000px; ">
	
    <form action="answer.jsp" method="post" id="quiz">
		
         <ol>
            
            <li>             
                    <h3>Consider an undirected random graph of eight vertices. The probability that there is an edge between a 
                        pair of vertices is ½. What is the expected number of unordered cycles of length three?</h3>
                    
                    <div>
                        <input type="radio" name="question-1-answers" id="question-1-answers-A" value="A" />
                        <label for="question-1-answers-A">A) 1/8 </label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-1-answers" id="question-1-answers-B" value="B" />
                        <label for="question-1-answers-B">B) 1</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-1-answers" id="question-1-answers-C" value="C" />
                        <label for="question-1-answers-C">C) 7</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-1-answers" id="question-1-answers-D" value="D" />
                        <label for="question-1-answers-D">D) 8</label>
                    </div>
                <div>
                    <input type="radio" name="question-1-answers" id="question-1-answers-uncheck" value="U" />
                    Uncheck the answer
                </div>
                
                </li>
                
                <li>
                    <hr>
                    <h3>Which of the following statements is/are TRUE for undirected graphs?<br>
P: Number of odd degree vertices is even.<br>
Q: Sum of degrees of all vertices is even.</h3>
                    
                    <div>
                        <input type="radio" name="question-2-answers" id="question-2-answers-A" value="A" />
                        <label for="question-2-answers-A">A) P only</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-2-answers" id="question-2-answers-B" value="B" />
                        <label for="question-2-answers-B">B) Q only</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-2-answers" id="question-2-answers-C" value="C" />
                        <label for="question-2-answers-C">C) Both P and Q</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-2-answers" id="question-2-answers-D" value="D" />
                        <label for="question-2-answers-D">D) Neither P nor Q</label>
                    </div>
                <div>
                    <input type="radio" name="question-2-answers" id="question-2-answers-uncheck" value="U" />
                    Uncheck the answer
                </div>
                
                </li>
                
                <li>
                    <hr>
                    <h3>In a k-way set associative cache, the cache is divided into v sets, each of which consists of k lines.
                        The lines of a set are placed in sequence one after another. The lines in set s are sequenced before
                        the lines in set (s+1). The main memory blocks are numbered 0 onwards. The main memory block numbered
                        j must be mapped to any one of the cache lines from</h3>
                    
                    <div>
                        <input type="radio" name="question-3-answers" id="question-3-answers-A" value="A" />
                        <label for="question-3-answers-A">A) (j mod v) *k to (j mod v) *k + (k − 1)</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-3-answers" id="question-3-answers-B" value="B" />
                        <label for="question-3-answers-B">B) (j mod v) to (j mod v) + (k − 1)</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-3-answers" id="question-3-answers-C" value="C" />
                        <label for="question-3-answers-C">C) (j mod k) to ( j mod k) + (v − 1)</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-3-answers" id="question-3-answers-D" value="D" />
                        <label for="question-3-answers-D">D) (j mod k) * v to ( j mod k) * v + (v − 1)</label>
                    </div>
                 <div>
                    <input type="radio" name="question-3-answers" id="question-3-answers-uncheck" value="U" />
                    Uncheck the answer
                </div>
                
                </li>
                
                <li>
                    <hr>
                    <h3>Which of the following statements are TRUE?
<br/>(1) The problem of determining whether there exists a cycle in an undirected
graph is in P.
<br/>(2) The problem of determining whether there exists a cycle in an undirected
graph is in NP.
<br/>(3) If a problem A is NP-Complete, there exists a non-deterministic polynomial
time algorithm to solve A.</h3>
                    
                    <div>
                        <input type="radio" name="question-4-answers" id="question-4-answers-A" value="A" />
                        <label for="question-4-answers-A">A) 1,2 and 3</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-4-answers" id="question-4-answers-B" value="B" />
                        <label for="question-4-answers-B">B) 1 and 2 only</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-4-answers" id="question-4-answers-C" value="C" />
                        <label for="question-4-answers-C">C)2 and 3 only</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-4-answers" id="question-4-answers-D" value="D" />
                        <label for="question-4-answers-D">D) 1 and 3 only</label>
                    </div>
                    <div>
                    <input type="radio" name="question-4-answers" id="question-4-answers-uncheck" value="U" />
                    Uncheck the answer
                </div>
                
                </li>
                
                <li>
                    <hr>
                    <h3>Which of the following statements is/are FALSE?
<br/>(1) For every non-deterministic Turing machine, there exists an equivalent
deterministic Turing machine.
<br/>(2) Turing recognizable languages are closed under union and complementation.
<br/>(3) Turing decidable languages are closed under intersection and
complementation
<br/>(4) Turing recognizable languages are closed under union and intersection.</h3>
                    
                    <div>
                        <input type="radio" name="question-5-answers" id="question-5-answers-A" value="A" />
                        <label for="question-5-answers-A">A) 1 and 4 only</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-5-answers" id="question-5-answers-B" value="B" />
                        <label for="question-5-answers-B">B) 1 and 3 only</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-5-answers" id="question-5-answers-C" value="C" />
                        <label for="question-5-answers-C">C) 2 only</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-5-answers" id="question-5-answers-D" value="D" />
                        <label for="question-5-answers-D">D) 3 only</label>
                    </div>
                    <div>
                    <input type="radio" name="question-5-answers" id="question-5-answers-uncheck" value="U" />
                    Uncheck the answer
                </div>
                
                </li>
  <li>
      <hr>
                    <h3>Three concurrent processes X, Y, and Z execute three different code segments
that access and update certain shared variables. Process X executes the P operation (i.e., wait) on semaphores a, b and c; 
process Y executes the P operation on semaphores b, c and d; process Z executes the P operation on semaphores c, d, and a
before entering the respective code segments. After completing the execution of its code segment, each process invokes the 
V operation (i.e., signal) on its three semaphores. All semaphores are binary semaphores initialized to one. Which one of the
following represents a deadlock free order of invoking the P operations by the processes?</h3>
 
                    <div>
                        <input type="radio" name="question-6-answers" id="question-6-answers-A" value="A" />
                        <label for="question-6-answers-A">A) X :P (a )P (b)P (c) Y :P (b )P (c)P (d) Z :P (c )P (d)P (a)</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-6-answers" id="question-6-answers-B" value="B" />
                        <label for="question-6-answers-B">B) X :P (b )P (a)P (c) Y :P (b )P (c)P (d) Z :P (a )P (c)P (d)</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-6-answers" id="question-6-answers-C" value="C" />
                        <label for="question-6-answers-C">C) X :P (b )P (a)P (c) Y :P (c )P (b)P (d) Z :P (a )P (c)P (d)</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-6-answers" id="question-6-answers-D" value="D" />
                        <label for="question-6-answers-D">D) X :P (a )P (b)P (c) Y :P (c )P (b)P (d) Z :P (c )P (d)P (a)</label>
                    </div>
                    <div>
                    <input type="radio" name="question-6-answers" id="question-6-answers-uncheck" value="U" />
                    Uncheck the answer
                </div>
                
</li>
<li>
    <hr>
                    <h3>An index is clustered, if</h3>
 
                    <div>
                        <input type="radio" name="question-7-answers" id="question-7-answers-A" value="A" />
                        <label for="question-7-answers-A">A) it is on a set of fields that form a candidate key.</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-7-answers" id="question-7-answers-B" value="B" />
                        <label for="question-7-answers-B">B) it is on a set of fields that include the primary key.</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-7-answers" id="question-7-answers-C" value="C" />
                        <label for="question-7-answers-C">C) the data records of the file are organized in the same order as 
                            the data entries of the index.</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-7-answers" id="question-7-answers-D" value="D" />
                        <label for="question-7-answers-D">D) the data records of the file are organized not in the same order 
                            as the data entries of the index.</label>
                    </div>
                    <div>
                    <input type="radio" name="question-7-answers" id="question-7-answers-uncheck" value="U" />
                    Uncheck the answer
                </div>
                
                </li>
<li>
    <hr>
                    <h3>The transport layer protocols used for real time multimedia, file transfer, DNS and email, respectively
                        are</h3>
 
                    <div>
                        <input type="radio" name="question-8-answers" id="question-8-answers-A" value="A" />
                        <label for="question-8-answers-A">A) TCP, UDP, UDP and TCP</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-8-answers" id="question-8-answers-B" value="B" />
                        <label for="question-8-answers-B">B) UDP, TCP, TCP and UDP</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-8-answers" id="question-8-answers-C" value="C" />
                        <label for="question-8-answers-C">C) UDP, TCP, UDP and TCP</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-8-answers" id="question-8-answers-D" value="D" />
                        <label for="question-8-answers-D">D) TCP, UDP, TCP and UDP</label>
                    </div>
                    <div>
                    <input type="radio" name="question-8-answers" id="question-8-answers-uncheck" value="U" />
                    Uncheck the answer
                </div>
                
                </li>
<li>
    <hr>
                    <h3>A scheduling algorithm assigns priority proportional to the waiting time of a process. Every process 
                        starts with priority zero(the lowest priority). The scheduler re-evaluates the process priorities every
                        T time units and decides the next process to schedule. Which one of the following is TRUE if the processes have no I/O operations and all arrive at time zero?</h3>
                    <div>
                        <input type="radio" name="question-9-answers" id="question-9-answers-A" value="A" />
                        <label for="question-9-answers-A">A) This algorithm is equivalent to the first-come-first-serve algorithm.</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-9-answers" id="question-9-answers-B" value="B" />
                        <label for="question-9-answers-B">B) This algorithm is equivalent to the round-robin algorithm.</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-9-answers" id="question-9-answers-C" value="C" />
                        <label for="question-9-answers-C">C) This algorithm is equivalent to the shortest-job-first algorithm.</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-9-answers" id="question-9-answers-D" value="D" />
                        <label for="question-9-answers-D">D) This algorithm is equivalent to the shortest-remaining-time-first 
                            algorithm.</label>
                    </div>
    <div>
                    <input type="radio" name="question-9-answers" id="question-9-answers-uncheck" value="U" />
                    Uncheck the answer
                </div>
                
                </li>
<li>
    <hr>
                    <h3>Which one of the following is the tightest upper bound that represents the time complexity of inserting
                        an object into a binary search tree of n nodes?</h3>
 
                    <div>
                        <input type="radio" name="question-10-answers" id="question-10-answers-A" value="A" />
                        <label for="question-10-answers-A">A) O(1)</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-10-answers" id="question-10-answers-B" value="B" />
                        <label for="question-10-answers-B">B) O(log n)</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-10-answers" id="question-10-answers-C" value="C" />
                        <label for="question-10-answers-C">C) O(n)</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-10-answers" id="question-10-answers-D" value="D" />
                        <label for="question-10-answers-D">D) O(n log n)</label>
                    </div>
    <div>
                    <input type="radio" name="question-10-answers" id="question-10-answers-uncheck" value="U" />
                    Uncheck the answer
                </div>
                
                </li>
<li>
    <hr>
                    <h3>Which one of the following is the tightest upper bound that represents the number of swaps required to 
                        sort n numbers using selection sort?</h3>
 
                    <div>
                        <input type="radio" name="question-11-answers" id="question-11-answers-A" value="A" />
                        <label for="question-11-answers-A">A) O(log n)</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-11-answers" id="question-11-answers-B" value="B" />
                        <label for="question-11-answers-B">B) O(n)</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-11-answers" id="question-11-answers-C" value="C" />
                        <label for="question-11-answers-C">C) O(n log n)</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-11-answers" id="question-11-answers-D" value="D" />
                        <label for="question-11-answers-D">D) O(n2)</label>
                    </div>
    <div>
                    <input type="radio" name="question-11-answers" id="question-11-answers-uncheck" value="U" />
                    Uncheck the answer
                </div>
                
                </li>
<li>
    <hr>
                    <h3>The smallest integer than can be represented by an 8-bit number in 2’s complement form is</h3>
  
                    <div>
                        <input type="radio" name="question-12-answers" id="question-12-answers-A" value="A" />
                        <label for="question-12-answers-A">A) -256</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-12-answers" id="question-12-answers-B" value="B" />
                        <label for="question-12-answers-B">B) -128</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-12-answers" id="question-12-answers-C" value="C" />
                        <label for="question-12-answers-C">C) -127</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-12-answers" id="question-12-answers-D" value="D" />
                        <label for="question-12-answers-D">D) 0</label>
                    </div>
                    <div>
                    <input type="radio" name="question-12-answers" id="question-12-answers-uncheck" value="U" />
                    Uncheck the answer
                </div>
                
                </li>
<li>
    <hr>
                    <h3>A RAM chip has a capacity of 1024 words of 8 bits each (1K × 8) . The number of 2 × 4 decoders with enable line needed to construct a 16K × 16 RAM from 1K × 8 RAM is</h3>
 
                    <div>
                        <input type="radio" name="question-13-answers" id="question-13-answers-A" value="A" />
                        <label for="question-13-answers-A">A) 4</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-13-answers" id="question-13-answers-B" value="B" />
                        <label for="question-13-answers-B">B) 5</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-13-answers" id="question-13-answers-C" value="C" />
                        <label for="question-13-answers-C">C) 6</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-13-answers" id="question-13-answers-D" value="D" />
                        <label for="question-13-answers-D">D) 7</label>
                    </div>
                    <div>
                    <input type="radio" name="question-13-answers" id="question-13-answers-uncheck" value="U" />
                    Uncheck the answer
                </div>
                
                </li>
<li>
    <hr>
                    <h3>The pre-order traversal sequence of a binary search tree is 30, 20, 10, 15, 25, 23,39, 35, 42. Which 
                        one of the following is the post-order traversal sequence of the same tree?</h3>
 
                    <div>
                        <input type="radio" name="question-14-answers" id="question-14-answers-A" value="A" />
                        <label for="question-14-answers-A">A) 10,20,15,23,25,35,42,39,30</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-14-answers" id="question-14-answers-B" value="B" />
                        <label for="question-14-answers-B">B) 15,10,25,23,20,42,35,39,30</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-14-answers" id="question-14-answers-C" value="C" />
                        <label for="question-14-answers-C">C) 15,20,10,23,25,42,35,39,30</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-14-answers" id="question-14-answers-D" value="D" />
                        <label for="question-14-answers-D">D) 15,10,23,25,20,35,42,39,30</label>
                    </div>
    <div>
                    <input type="radio" name="question-14-answers" id="question-14-answers-uncheck" value="U" />
                    Uncheck the answer
                </div>
                
                </li>
<li>
    <hr>
                    <h3>In an IPv4 datagram, the M bit is 0, the value of HLEN is 10, the value of total length is 400 and the 
                        fragment offset value is 300. The position of the datagram, the sequence numbers of the first and the 
                        last bytes of the payload, respectively are</h3>
 
                    <div>
                        <input type="radio" name="question-15-answers" id="question-15-answers-A" value="A" />
                        <label for="question-15-answers-A">A) Last fragment, 2400 and 2789</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-15-answers" id="question-15-answers-B" value="B" />
                        <label for="question-15-answers-B">B) First fragment, 2400 and 2759</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-15-answers" id="question-15-answers-C" value="C" />
                        <label for="question-15-answers-C">C) Last fragment, 2400 and 2759</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-15-answers" id="question-15-answers-D" value="D" />
                        <label for="question-15-answers-D">D) Middle fragment, 300 and 689</label>
                    </div>
    <div>
                    <input type="radio" name="question-15-answers" id="question-15-answers-uncheck" value="U" />
                    Uncheck the answer
                </div>
                
                </li>
<li>
    <hr>
                    <h3>Determine the maximum length of cable (in km) for transmitting data at a rate of 500 Mbps in an Ethernet LAN with frames of size 10,000 bits. Assume the signal speed in the cable to be 2,00,000 km/s</h3>
 
                    <div>
                        <input type="radio" name="question-16-answers" id="question-16-answers-A" value="A" />
                        <label for="question-16-answers-A">A) 1</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-16-answers" id="question-16-answers-B" value="B" />
                        <label for="question-16-answers-B">B) 2</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-16-answers" id="question-16-answers-C" value="C" />
                        <label for="question-16-answers-C">C) 2.5</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-16-answers" id="question-16-answers-D" value="D" />
                        <label for="question-16-answers-D">D) 5</label>
                    </div>
                    <div>
                    <input type="radio" name="question-16-answers" id="question-16-answers-uncheck" value="U" />
                    Uncheck the answer
                </div>
                
                </li>
 <li>
     <hr>
                    <h3>A shared variable x, initialized to zero, is operated on by four concurrent processes W, X, Y, Z as 
                        follows. Each of the processes W and X reads x from memory, increments by one, stores it to memory,
                        and then terminates. Each of the processes Y and Z reads x from memory, decrements by two, stores it 
                        to memory, and then terminates. Each process before reading x invokes the P operation (i.e., wait) on
                        a counting semaphore S and invokes the V operation (i.e., signal) on the semaphore S after storing x 
                        to memory. Semaphore S is initialized to two. What is the maximum possible value of x after all 
                        processes complete execution?</h3>
 
                    <div>
                        <input type="radio" name="question-17-answers" id="question-17-answers-A" value="A" />
                        <label for="question-17-answers-A">A) -2</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-17-answers" id="question-17-answers-B" value="B" />
                        <label for="question-17-answers-B">B) -1</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-17-answers" id="question-17-answers-C" value="C" />
                        <label for="question-17-answers-C">C) 1</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-17-answers" id="question-17-answers-D" value="D" />
                        <label for="question-17-answers-D">D) 2</label>
                    </div>
     <div>
                    <input type="radio" name="question-17-answers" id="question-17-answers-uncheck" value="U" />
                    Uncheck the answer
                </div>
                
                </li>
<li>
    <hr>
                    <h3>Consider a hard disk with 16 recording surfaces (0 − 15) having 16384 cylinders (0 − 16383) and each
                        cylinder contains 64 sectors (0 − 63) . Data storage capacity in each sector is 512 bytes. Data are
                        organized cylinder–wise and the addressing format is &lt;cylinder no., sector no.&gt;. A file of size
                        42797 KB is stored in the disk and the starting disk location of the file is &lt;1200, 9, 40&gt;. What
                        is the cylinder number of the last sector of the file, if it is stored in a contiguous manner?</h3>
 
                    <div>
                        <input type="radio" name="question-18-answers" id="question-18-answers-A" value="A" />
                        <label for="question-18-answers-A">A) 1281</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-18-answers" id="question-18-answers-B" value="B" />
                        <label for="question-18-answers-B">B) 1282</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-18-answers" id="question-18-answers-C" value="C" />
                        <label for="question-18-answers-C">C) 1283</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-18-answers" id="question-18-answers-D" value="D" />
                        <label for="question-18-answers-D">D) 1284</label>
                    </div>
    <div>
                    <input type="radio" name="question-18-answers" id="question-18-answers-uncheck" value="U" />
                    Uncheck the answer
                </div>
                
                </li>
<li>
    <hr>
                    <h3>Out of all the 2-digit integers between 1 and 100, a 2-digit number has to be selected at random. What is the probability that the selected number is not divisible by 7?</h3>
 
                    <div>
                        <input type="radio" name="question-19-answers" id="question-19-answers-A" value="A" />
                        <label for="question-19-answers-A">A) 13/90</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-19-answers" id="question-19-answers-B" value="B" />
                        <label for="question-19-answers-B">B) 12/90</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-19-answers" id="question-19-answers-C" value="C" />
                        <label for="question-19-answers-C">C) 78/90</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-19-answers" id="question-19-answers-D" value="D" />
                        <label for="question-19-answers-D">D) 77/90</label>
                        
                    </div>
                    <div>
                    <input type="radio" name="question-19-answers" id="question-19-answers-uncheck" value="U" />
                    Uncheck the answer
                </div>
                
                </li>
<li>
    <hr>
                    <h3>A tourist covers half of his journey by train at 60 km/h, half of the remainder by bus at 30 km/h and 
                        the rest by cycle at 10 km/h. The average of the tourist in km/h during his entire journey is</h3>
 
                    <div>
                        <input type="radio" name="question-20-answers" id="question-20-answers-A" value="A" />
                        <label for="question-20-answers-A">A) 36</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-20-answers" id="question-20-answers-B" value="B" />
                        <label for="question-20-answers-B">B) 30</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-20-answers" id="question-20-answers-C" value="C" />
                        <label for="question-20-answers-C">C) 24</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-20-answers" id="question-20-answers-D" value="D" />
                        <label for="question-20-answers-D">D) 18</label>
                    </div><div>
                    <input type="radio" name="question-20-answers" id="question-20-answers-uncheck" value="U" />
                    Uncheck the answer
                </div>
                
                </li>
         
         </ol><br>
        <input type="reset" value="Reset all answers" style="
    padding-left: 30px;
    padding-right: 30px;
    margin-left: 15%;
">  
         <input type="submit" value="Submit" style="
    font-weight: bold;
    padding-left: 30px;
    padding-right: 30px;
    margin-bottom: 100px;
    margin-left: 10%;

">
		
</form>
	</div>
	</div>
</body>

</html>

