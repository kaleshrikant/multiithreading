# Virtual Threads : [Java 21]
- Virtual Threads offering lightweight, scalable concurrency within the JVM.
- These are managed by the JVM rather than the operating system, leading to improved scalability and responsiveness in Java applications.
- Virtual threads are designed to be more efficient in terms of memory and CPU usage compared to traditional platform threads, which are mapped directly to OS threads and are considered "expensive" in terms of resources.
 - This efficiency makes virtual threads particularly suitable for tasks involving blocking operations such as logging, file I/O, and database access, which are common in many Java business applications.
 - Certain operations, such as those involving synchronized blocks or native code, can cause virtual threads to be "pinned" to a platform thread, which can affect performance.


<p>
## Thread Life Cycle 
<br> 
<img title="Thread Life Cycle" alt="Thread Life Cycle" src="https://github.com/kaleshrikant/multiithreading/blob/master/J2SE-Virtual-Threads/virtual-threads/src/main/resources/Thread%20Life%20Cycle.jpg">
<p> 

<p>
 #### Internal Working of Virtual Threads
<br>
<img title="Internals Working Of Virtual Threads" alt="Internals-Virtual-Threads" src="https://github.com/kaleshrikant/multiithreading/blob/master/J2SE-Virtual-Threads/virtual-threads/src/main/resources/Internals-Virtual-Threads.jpg">
<p>

<p>
### Different types of thread :
##### A. Kernel/OS Thread
This is also known as OS Thread. Kernel Threads are managed and scheduled by the operating system.
<p>

<p>
##### B. Platform Thread
Each Java platform thread is associated 1-to-1 with an OS or Kernel thread
<br>
<img title="Platform Thread" alt="Platform Thread" src="https://github.com/kaleshrikant/multiithreading/blob/master/J2SE-Virtual-Threads/virtual-threads/src/main/resources/Platfom-Threads.jpg">
<p>

<p>
##### C. Virtual Thread
Virtual Threads offering lightweight, scalable concurrency within the JVM.
<br>
<img title="Virtual Threads" alt="Virtual-Threads" src="https://github.com/kaleshrikant/multiithreading/blob/master/J2SE-Virtual-Threads/virtual-threads/src/main/resources/Virtual-Threads.jpg">
<p>

<p>
#### Benifits of Virtual Threads
<br>
<img title="Benifits of Virtual-Threads" alt="Benifits-Virtual-Threads" src="https://github.com/kaleshrikant/multiithreading/blob/master/J2SE-Virtual-Threads/virtual-threads/src/main/resources/Benifits-Virtual-Threads.jpg">
<p>

### NOTE
- Virtual Threads are mapped to platform threads when it does real work.
- Threads are not allocated to Platform threads until real work needs to be executed.
