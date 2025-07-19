package com.kaleshrikant.contoller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class PlayerController {

	@GetMapping("/players")
	public List<String> getPlayers() {
		try {
			Thread.sleep (2000 );
		} catch (InterruptedException e) { throw new RuntimeException ( e ); 	}

		return List
					.of (
							"Sachin Tendulkar",
							"Sunil Gawaskar",
							"Ajit Agarkar"
					);
	}
}
