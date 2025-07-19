# Virtual Threads : [Java 21]

- Virtual Threads offering lightweight, scalable concurrency within the JVM.
- These are managed by the JVM rather than the operating system, leading to improved scalability and responsiveness in Java applications.
- Virtual threads are designed to be more efficient in terms of memory and CPU usage compared to traditional platform threads, which are mapped directly to OS threads and are considered "expensive" in terms of resources.
 - This efficiency makes virtual threads particularly suitable for tasks involving blocking operations such as logging, file I/O, and database access, which are common in many Java business applications.
 - Certain operations, such as those involving synchronized blocks or native code, can cause virtual threads to be "pinned" to a platform thread, which can affect performance.

   
## Different types of thread :
A. Kernel/OS Thread
This is also known as OS Thread. Kernel Threads are managed and scheduled by the operating system.

B. Platform Thread
Each Java platform thread is associated 1-to-1 with an OS or Kernel thread


## NOTE
Virtual Threads are mapped to platform threads when it does real work.
- OS Threads are not allocated to Platform threads until real work needs to be executed.

