package com.kaleshrikant;

public class VirtualThreadDemo {
	public static void main ( String[] args ) {

// Normal Thread
		Thread
				.ofPlatform()
				.start(
						() ->
								System.out.println("Platform Thread : "+Thread.currentThread())
						// Platform Thread : Thread[#28,Thread-0,5,main]
				);

		System.out.println("-----------------------------------------------------");
// Virtual Thread
		Thread
				.ofVirtual()
				.start(
						() ->
								System.out.println("Virtual Thread : "+Thread.currentThread())
						// Virtual Thread : Virtual Thread[#21]/runnable@ForkJoinPool -1-worker-1
				);
	}
}
