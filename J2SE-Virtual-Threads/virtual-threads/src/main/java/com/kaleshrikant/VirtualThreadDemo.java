package com.kaleshrikant;

import java.util.stream.IntStream;

public class VirtualThreadDemo {
	public static void main ( String[] args ) throws InterruptedException {
/*

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
*/
		var start = System.currentTimeMillis();
		var totalThread = 10000;
		var threads = IntStream.range(0, totalThread)
				.mapToObj(
						thCount -> Thread.ofVirtual().unstarted(() -> {
						})).toList();
		threads.forEach(Thread::start);
				// VirtualThread[#20]/runnable@ForkJoinPool-1-worker-1 // VirtualThread[#20]/runnable@ForkJoinPool-1-worker-2
			// millis used to launch 10000vthreads:58ms
		for (Thread thread : threads) {
			thread.join();
		}
		var end = System.currentTimeMillis();
		System.out.println("millis used to launch " + totalThread + "vthreads:" + (end - start) + "ms");

	}
}
